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
    apiKey: 'AIzaSyBnffIfmw4qgaqrHUpPedvUZ3t93cFZrTc',
    appId: '1:1072316874115:web:5b2e66b28514c66ae28ab6',
    messagingSenderId: '1072316874115',
    projectId: 'photos-8ae01',
    authDomain: 'photos-8ae01.firebaseapp.com',
    storageBucket: 'photos-8ae01.appspot.com',
    measurementId: 'G-LBZJQC7E0X',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDjTuaBgBveZIKZRCwUtlIW1L5JMLBdK-U',
    appId: '1:1072316874115:android:22ca527c15b6b69ce28ab6',
    messagingSenderId: '1072316874115',
    projectId: 'photos-8ae01',
    storageBucket: 'photos-8ae01.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC3G8bCcgM39Yubeu6R2g7Z0MNxPMOO7Bo',
    appId: '1:1072316874115:ios:147db7143a9f3d83e28ab6',
    messagingSenderId: '1072316874115',
    projectId: 'photos-8ae01',
    storageBucket: 'photos-8ae01.appspot.com',
    iosClientId: '1072316874115-9gm77032fm3dinierua6tm60mot77usi.apps.googleusercontent.com',
    iosBundleId: 'com.example.callender',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC3G8bCcgM39Yubeu6R2g7Z0MNxPMOO7Bo',
    appId: '1:1072316874115:ios:bb9e18d8ce849a07e28ab6',
    messagingSenderId: '1072316874115',
    projectId: 'photos-8ae01',
    storageBucket: 'photos-8ae01.appspot.com',
    iosClientId: '1072316874115-asdle307pj98rhrt62dbs39097vfu58m.apps.googleusercontent.com',
    iosBundleId: 'com.example.callender.RunnerTests',
  );
}
