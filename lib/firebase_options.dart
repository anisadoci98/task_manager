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
    apiKey: 'AIzaSyB3ht4Op1S4HKgwT6ZT53sz0UNNUEJQkRE',
    appId: '1:423257200599:web:fb3dbc3996d21995c5dd92',
    messagingSenderId: '423257200599',
    projectId: 'task-manager-13bb8',
    authDomain: 'task-manager-13bb8.firebaseapp.com',
    storageBucket: 'task-manager-13bb8.appspot.com',
    measurementId: 'G-11DJ062M0G',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD2z4aC42sT4I5l2Ar2GJcSI-nbS6KFrcI',
    appId: '1:423257200599:android:6ae91c1d03f28b46c5dd92',
    messagingSenderId: '423257200599',
    projectId: 'task-manager-13bb8',
    storageBucket: 'task-manager-13bb8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDrouPNd-R96ESn1htEPRu9bAmoHCrXiBg',
    appId: '1:423257200599:ios:a7a205c925a43297c5dd92',
    messagingSenderId: '423257200599',
    projectId: 'task-manager-13bb8',
    storageBucket: 'task-manager-13bb8.appspot.com',
    iosBundleId: 'com.example.taskManager',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDrouPNd-R96ESn1htEPRu9bAmoHCrXiBg',
    appId: '1:423257200599:ios:02ad276762029cc8c5dd92',
    messagingSenderId: '423257200599',
    projectId: 'task-manager-13bb8',
    storageBucket: 'task-manager-13bb8.appspot.com',
    iosBundleId: 'com.example.taskManager.RunnerTests',
  );
}