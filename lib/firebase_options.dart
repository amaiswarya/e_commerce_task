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
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyCcFNe9KIcAG_YO4u8EjjSJM869q3D751s',
    appId: '1:350757585595:web:716ff88f56560969379f9e',
    messagingSenderId: '350757585595',
    projectId: 'e-commerce-test-4b682',
    authDomain: 'e-commerce-test-4b682.firebaseapp.com',
    storageBucket: 'e-commerce-test-4b682.appspot.com',
    measurementId: 'G-E9BX9EW62P',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBa0t8uHLy1Pyqh_zivetuwdcMMXfV_sUE',
    appId: '1:350757585595:android:e436cc0e9cfd579d379f9e',
    messagingSenderId: '350757585595',
    projectId: 'e-commerce-test-4b682',
    storageBucket: 'e-commerce-test-4b682.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC8wkpnalTsfmCl6ifIOi3JvOOhdw_G5z8',
    appId: '1:350757585595:ios:95638eb8ae7bf27d379f9e',
    messagingSenderId: '350757585595',
    projectId: 'e-commerce-test-4b682',
    storageBucket: 'e-commerce-test-4b682.appspot.com',
    iosBundleId: 'com.example.ecommerceTask',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC8wkpnalTsfmCl6ifIOi3JvOOhdw_G5z8',
    appId: '1:350757585595:ios:95638eb8ae7bf27d379f9e',
    messagingSenderId: '350757585595',
    projectId: 'e-commerce-test-4b682',
    storageBucket: 'e-commerce-test-4b682.appspot.com',
    iosBundleId: 'com.example.ecommerceTask',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCcFNe9KIcAG_YO4u8EjjSJM869q3D751s',
    appId: '1:350757585595:web:a86c763718a183bf379f9e',
    messagingSenderId: '350757585595',
    projectId: 'e-commerce-test-4b682',
    authDomain: 'e-commerce-test-4b682.firebaseapp.com',
    storageBucket: 'e-commerce-test-4b682.appspot.com',
    measurementId: 'G-YWWRDCCGJ8',
  );
}
