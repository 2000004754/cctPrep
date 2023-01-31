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
    apiKey: 'AIzaSyDFKbWm8HkG_carm7gpieRP_zjWbDfqMyU',
    appId: '1:254282177282:web:e8f21ed4c08b9659be801b',
    messagingSenderId: '254282177282',
    projectId: 'practicecct',
    authDomain: 'practicecct.firebaseapp.com',
    databaseURL: 'https://practicecct-default-rtdb.firebaseio.com',
    storageBucket: 'practicecct.appspot.com',
    measurementId: 'G-H2XDPHN63Q',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD1wsqa1e9ACNLD9PVEungS3S0_jFPeKVY',
    appId: '1:254282177282:android:ae50fde97e888085be801b',
    messagingSenderId: '254282177282',
    projectId: 'practicecct',
    databaseURL: 'https://practicecct-default-rtdb.firebaseio.com',
    storageBucket: 'practicecct.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDireRlXbCwjGtYqy7Mjvc_nENTqbwGrtY',
    appId: '1:254282177282:ios:dd046a790c740b51be801b',
    messagingSenderId: '254282177282',
    projectId: 'practicecct',
    databaseURL: 'https://practicecct-default-rtdb.firebaseio.com',
    storageBucket: 'practicecct.appspot.com',
    iosClientId: '254282177282-1olohrqelftc7o4ffm9vom8947a41rrm.apps.googleusercontent.com',
    iosBundleId: 'com.example.practiceCct',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDireRlXbCwjGtYqy7Mjvc_nENTqbwGrtY',
    appId: '1:254282177282:ios:dd046a790c740b51be801b',
    messagingSenderId: '254282177282',
    projectId: 'practicecct',
    databaseURL: 'https://practicecct-default-rtdb.firebaseio.com',
    storageBucket: 'practicecct.appspot.com',
    iosClientId: '254282177282-1olohrqelftc7o4ffm9vom8947a41rrm.apps.googleusercontent.com',
    iosBundleId: 'com.example.practiceCct',
  );
}
