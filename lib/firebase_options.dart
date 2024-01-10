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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBJ7Sp3pNWsFAtoN2Picfhjf_b5Qq9pgGs',
    appId: '1:990475974401:android:ab2a5efef412b316c80d00',
    messagingSenderId: '990475974401',
    projectId: 'stackdemo-9e59f',
    storageBucket: 'stackdemo-9e59f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAYqYzUweTssg48hon1NSVlAUGAKZW2ZVc',
    appId: '1:990475974401:ios:8b7644c16c25f19bc80d00',
    messagingSenderId: '990475974401',
    projectId: 'stackdemo-9e59f',
    storageBucket: 'stackdemo-9e59f.appspot.com',
    androidClientId: '990475974401-rc5c42un2f9igjkf8uu0irrqhvsl5pmh.apps.googleusercontent.com',
    iosClientId: '990475974401-agcol9af5ugu6f0ho5a4b3qjtqqdnkod.apps.googleusercontent.com',
    iosBundleId: 'com.example.stackDemo',
  );
}
