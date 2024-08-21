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
  AWSLogger().logLevel = LogLevel.verbose;
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
      AmplifyAPI(
        options: APIPluginOptions(modelProvider: ModelProvider.instance),
      ),
      AmplifyDataStore(
        modelProvider: ModelProvider.instance,
        options: const DataStorePluginOptions(
          authModeStrategy: AuthModeStrategy.multiAuth,
        ),
      )
    ]);

    try {
      await Amplify.configure(amplifyconfig);
    } on AmplifyAlreadyConfiguredException {
      safePrint(
          "Tried to reconfigure Amplify; this can occur when your app restarts on Android.");
    }

    await Amplify.DataStore.start();

    Amplify.Hub.listen(HubChannel.DataStore, (event) {
      print(event.type);
    });

    listenChanges();
  }

  StreamSubscription<SubscriptionEvent<Todo>>? streamTodos;
  StreamSubscription<SubscriptionEvent<Blog>>? streamBlogs;

  void listenChanges() {
    Amplify.DataStore.observeQuery(Todo.classType).listen(
      (event) {
        safePrint('QUERYSNAPSHOT:: Todo:: ${event.items}');
      },
    );

    streamTodos = Amplify.DataStore.observe(Todo.classType).listen(
      (event) {
        safePrint('SUBSCRIPTIONEVENT:: Todo:: ${event.item}');
      },
    );

    streamBlogs = Amplify.DataStore.observe(Blog.classType).listen(
      (event) {
        safePrint('SUBSCRIPTIONEVENT:: Blog:: ${event.item}');
      },
    );
  }

  void stopListeningChanges() {
    streamTodos?.cancel();
  }

  Todo? _lastTodo;
  Blog? _lastBlog;

  Future<void> createTodo() async {
    _lastTodo = Todo(name: 'foo');
    await Amplify.DataStore.save(_lastTodo!);
  }

  Future<void> createBlog() async {
    _lastBlog = Blog(name: "foo");
    await Amplify.DataStore.save(_lastBlog!);
  }

  Future<void> deleteTodo() async {
    if (_lastTodo == null) {
      return;
    }
    await Amplify.DataStore.delete(_lastTodo!);
  }

  Future<void> deleteBlog() async {
    if (_lastBlog == null) {
      return;
    }
    await Amplify.DataStore.delete(_lastBlog!);
  }

  Future<void> nullifyTest() async {
    _lastTodo = Todo(name: 'foo');
    await Amplify.DataStore.save(_lastTodo!);

    final queriedTodo = await Amplify.DataStore.query(Todo.classType,
        where: Todo.ID.eq(_lastTodo!.id));
    print('Before nullify ${queriedTodo}');

    final nullTodo = _lastTodo!.copyWithModelFieldValues(
      name: const ModelFieldValue.value(null),
    );
    await Amplify.DataStore.save(nullTodo);

    final queriedTodoAfterNullify = await Amplify.DataStore.query(
        Todo.classType,
        where: Todo.ID.eq(_lastTodo!.id));
    print('After nullify ${queriedTodoAfterNullify}');
  }

  Future<void> updateRestrictedTest() async {
    final restricted = Restricted(name: 'foo');
    await Amplify.DataStore.save(restricted);

    final queriedRestricted = await Amplify.DataStore.query(
        Restricted.classType,
        where: Restricted.ID.eq(restricted.id));
    print('Before update ${queriedRestricted}');

    final updatedRestricted = restricted.copyWithModelFieldValues(
      name: const ModelFieldValue.value('bar'),
    );

    try {
      await Amplify.DataStore.save(updatedRestricted);
    } catch (e) {
      print('Error updating restricted: $e');
    }

    final queriedRestricted2 = await Amplify.DataStore.query(
        Restricted.classType,
        where: Restricted.ID.eq(restricted.id));
    print('After update ${queriedRestricted2}');
  }

  Future<void> groupPermissionTest() async {
    final sampleImg =
        S3Object(bucket: 'foo', region: 'bar', date: TemporalDateTime.now());
    final item = Item(
        tenantId: 'baz',
        locationId: 'qux',
        location: 'quux',
        ck: 'foo',
        images: [sampleImg]);
    await Amplify.DataStore.save(item);

    final oldItem = (await Amplify.DataStore.query(
      Item.classType,
      where: Item.TENANTID.eq(item.tenantId).and(Item.ID.eq(item.id)),
    ))
        .first;
    print('Before update ${oldItem}');

    final img =
        S3Object(bucket: 'baz', region: 'qux', date: TemporalDateTime.now());

    final List<S3Object>? images = oldItem.images;
    final List<S3Object> nImage = [img, ...?images];

    final newItem = oldItem.copyWith(name: 'hello world', images: nImage);
    await Amplify.DataStore.save(newItem);

    final newItem2 = (await Amplify.DataStore.query(Item.classType,
            where: Item.TENANTID.eq(item.tenantId).and(Item.ID.eq(item.id))))
        .first;
    print('After update ${newItem2}');
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
                onPressed: () => createTodo(),
                child: const Text('create Todo'),
              ),
              FilledButton(
                onPressed: () => createBlog(),
                child: const Text('create Blog'),
              ),
              FilledButton(
                onPressed: () => deleteTodo(),
                child: const Text('Delete last Todo'),
              ),
              FilledButton(
                onPressed: () => deleteBlog(),
                child: const Text('Delete last Blog'),
              ),
              FilledButton(
                onPressed: () => nullifyTest(),
                child: const Text('Nullify Test'),
              ),
              FilledButton(
                onPressed: () => updateRestrictedTest(),
                child: const Text('Update Restricted Test'),
              ),
              FilledButton(
                onPressed: () => groupPermissionTest(),
                child: const Text('Permission Test'),
              ),
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
            ],
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
