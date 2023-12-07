import 'dart:async';

import 'package:amplify_api/amplify_api.dart';
// Amplify Flutter Packages
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

import './models/ModelProvider.dart';
// Generated in previous step
import 'amplifyconfiguration.dart';

void main() {
  // AWSLogger().logLevel = LogLevel.verbose;
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  initState() {
    super.initState();
    _configureAmplify();
  }

  Future<void> _configureAmplify() async {
    await Amplify.addPlugins([
      AmplifyAuthCognito(),
      AmplifyAPI(modelProvider: ModelProvider.instance),
      AmplifyDataStore(
        modelProvider: ModelProvider.instance,
      )
    ]);

    try {
      await Amplify.configure(amplifyconfig);
    } on AmplifyAlreadyConfiguredException {
      safePrint(
          "Tried to reconfigure Amplify; this can occur when your app restarts on Android.");
    }

    Amplify.Hub.listen(HubChannel.DataStore, (event) {
      // option 1
      if (event.eventName == 'modelSynced') {
        safePrint(
            'Received ModelSyncedEvent: ${(event.payload as ModelSyncedEvent).isFullSync}');
      }

      // option 2
      final payload = event.payload;
      if (payload is ModelSyncedEvent) {
        safePrint('Received ModelSyncedEvent: ${payload.isFullSync}');
      }
    });

    Amplify.DataStore.observeQuery(
      TestTableOne.classType,
    ).listen((QuerySnapshot<TestTableOne> snapshot) {
      safePrint('Received QuerySnapshot: ${snapshot.items}');
      // setState(() {
      // users = snapshot.items;
      // });
    });
  }

  Future<void> save() async {
    try {
      final profileId = UUID.getUUID();
      final testTableOne = TestTableOne(profile_id: profileId, count: 100);
      await Amplify.DataStore.save(testTableOne);
      final testTableTwo = TestTableTwo(profile_id: profileId, count: 101);
      await Amplify.DataStore.save(testTableTwo);
      final testTableThree = TestTableThree(profile_id: profileId, count: 102);
      await Amplify.DataStore.save(testTableThree);
    } on ApiException catch (e) {
      safePrint('Mutation failed: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: MaterialApp(
        builder: Authenticator.builder(),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Auth & DataStore Playground'),
            backgroundColor: Colors.purple,
          ),
          body: Column(
            children: [
              FilledButton(
                onPressed: () => save(),
                child: const Text('save'),
              ),
              FilledButton(
                  onPressed: save, child: const Text('create user models')),
              FilledButton(
                  onPressed: () async => await Amplify.DataStore.start(),
                  child: const Text('Start DataStore')),
              FilledButton(
                  onPressed: () async => await Amplify.DataStore.stop(),
                  child: const Text('Stop DataStore')),
              FilledButton(
                  onPressed: () async => await Amplify.DataStore.clear(),
                  child: const Text('Clear DataStore')),
              OutlinedButton(
                  onPressed: () async => await Amplify.Auth.signOut(),
                  child: const Text('Sign out')),
              // Container(
              //   height: 300,
              //   child: TodoWidget(users: users),
              // )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: save,
            backgroundColor: Colors.green,
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}

// class TodoWidget extends StatelessWidget {
//   final List<Object> users;

//   TodoWidget({super.key, required this.users});

//   @override
//   Widget build(BuildContext context) {
//     print(users);
//     return ListView.builder(
//       itemCount: users.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//           title: Text(users[index]?.name ?? ''),
//           subtitle: Text(users[index]?.friendIDs.toString() ?? ''),
//         );
//       },
//     );
//   }
// }
