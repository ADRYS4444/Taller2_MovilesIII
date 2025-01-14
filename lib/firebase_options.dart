// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyC-6PU-AZyt9BzgNdPDCdIgTf2_KMgvUFc',
    appId: '1:40877853579:web:9e9b7535e7ffb0d2e3bd8e',
    messagingSenderId: '40877853579',
    projectId: 'movilesapp-65462',
    authDomain: 'movilesapp-65462.firebaseapp.com',
    databaseURL: 'https://movilesapp-65462-default-rtdb.firebaseio.com',
    storageBucket: 'movilesapp-65462.firebasestorage.app',
    measurementId: 'G-SK092FQEDR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCSslYjI5Cp41bTvYdEPLIm8GR3UPCcIj0',
    appId: '1:40877853579:android:11f1f7ba3b88aa65e3bd8e',
    messagingSenderId: '40877853579',
    projectId: 'movilesapp-65462',
    databaseURL: 'https://movilesapp-65462-default-rtdb.firebaseio.com',
    storageBucket: 'movilesapp-65462.firebasestorage.app',
  );
}
