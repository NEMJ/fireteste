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
    apiKey: 'AIzaSyD2wMNaXZajY25xVH0inTeQubjbHVcf4Zg',
    appId: '1:161641852332:web:56c60ea79f6ea430559e09',
    messagingSenderId: '161641852332',
    projectId: 'fireteste-294e0',
    authDomain: 'fireteste-294e0.firebaseapp.com',
    storageBucket: 'fireteste-294e0.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDvrtWM3fbXushyoogs1CUSk6XePDbMmeA',
    appId: '1:161641852332:android:dde11cd730b61711559e09',
    messagingSenderId: '161641852332',
    projectId: 'fireteste-294e0',
    storageBucket: 'fireteste-294e0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDlnbgV9Mhph6QFTXreVRNdw0B5roaSw4I',
    appId: '1:161641852332:ios:de60b08153e3515f559e09',
    messagingSenderId: '161641852332',
    projectId: 'fireteste-294e0',
    storageBucket: 'fireteste-294e0.appspot.com',
    iosClientId: '161641852332-ogd18sto7mln9l0tbn4sco8h05ksq8p7.apps.googleusercontent.com',
    iosBundleId: 'com.example.fireteste',
  );
}
