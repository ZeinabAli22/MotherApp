// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAXQBgznExVuiY7zoDUjeoPGFBJscr2bfc',
    appId: '1:358916469701:web:64f99e3a11ec871319d1ac',
    messagingSenderId: '358916469701',
    projectId: 'proj-a33e9',
    authDomain: 'proj-a33e9.firebaseapp.com',
    storageBucket: 'proj-a33e9.appspot.com',
    measurementId: 'G-9XCNHENY04',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCzxpQ3O3M8F4y8hgTOvvMq3VbWlcx0mgk',
    appId: '1:358916469701:android:b113eee17f6316b219d1ac',
    messagingSenderId: '358916469701',
    projectId: 'proj-a33e9',
    storageBucket: 'proj-a33e9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCFgG_NyfjMgmNqnpU6yfMIUlhroR2ugm8',
    appId: '1:358916469701:ios:bae9831f0e30ad5919d1ac',
    messagingSenderId: '358916469701',
    projectId: 'proj-a33e9',
    storageBucket: 'proj-a33e9.appspot.com',
    iosBundleId: 'com.example.projApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCFgG_NyfjMgmNqnpU6yfMIUlhroR2ugm8',
    appId: '1:358916469701:ios:d19702527c809d5719d1ac',
    messagingSenderId: '358916469701',
    projectId: 'proj-a33e9',
    storageBucket: 'proj-a33e9.appspot.com',
    iosBundleId: 'com.example.projApp.RunnerTests',
  );
}
