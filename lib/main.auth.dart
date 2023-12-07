import 'dart:async';

import 'package:amplify_api/amplify_api.dart';
// Amplify Flutter Packages
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import './models/ModelProvider.dart';
// Generated in previous step
import 'amplifyconfiguration.dart';

void main() {
  AWSLogger().logLevel = LogLevel.verbose;
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  // AuthService authService = Get.put(AuthService());

  @override
  void initState() {
    super.initState();
    // RoutingConfig.defineRoutes(router);
    _configureAmplify();
  }

  Future _configureAmplify() async {
    await Amplify.addPlugins([
      AmplifyAuthCognito(),
      AmplifyStorageS3(),
      AmplifyAPI(modelProvider: ModelProvider.instance),
      AmplifyDataStore(
        modelProvider: ModelProvider.instance,
        syncExpressions: [
          // DataStoreSyncExpression(User.classType, () => User.CLIENTID.eq(clientId)),
        ],
      )
    ]);
    try {
      await Amplify.configure(amplifyconfig);
    } catch (e) {
      print("Exception $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: MaterialApp(
        // onGenerateRoute: router.generator,
        builder: Authenticator.builder(),
        title: 'My App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.cyan,
          canvasColor: Colors.white,
          brightness: Brightness.light,
          useMaterial3: true,
        ),
        home: const Center(
          child: Text("Hello World"),
        ),
      ),
    );
  }
}
