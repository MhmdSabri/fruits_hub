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
    apiKey: 'AIzaSyANAnDPWd5d4GrNPedoPGOBBZ6rlegk5NE',
    appId: '1:400474185539:web:2c1bd9b4c5598b396459f6',
    messagingSenderId: '400474185539',
    projectId: 'fruits-hub-project',
    authDomain: 'fruits-hub-project.firebaseapp.com',
    storageBucket: 'fruits-hub-project.firebasestorage.app',
    measurementId: 'G-4B9R8K434C',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDWthIU1VfsgVKKujMgfFxojTyPukOqu_I',
    appId: '1:400474185539:android:3d0b7221d0bf07b36459f6',
    messagingSenderId: '400474185539',
    projectId: 'fruits-hub-project',
    storageBucket: 'fruits-hub-project.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyARTjG-j5wsIURWyNFci-dwxwUNR-V5Q1k',
    appId: '1:400474185539:ios:387cf70e2df808db6459f6',
    messagingSenderId: '400474185539',
    projectId: 'fruits-hub-project',
    storageBucket: 'fruits-hub-project.firebasestorage.app',
    iosBundleId: 'com.example.fruitsHub',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyARTjG-j5wsIURWyNFci-dwxwUNR-V5Q1k',
    appId: '1:400474185539:ios:387cf70e2df808db6459f6',
    messagingSenderId: '400474185539',
    projectId: 'fruits-hub-project',
    storageBucket: 'fruits-hub-project.firebasestorage.app',
    iosBundleId: 'com.example.fruitsHub',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyANAnDPWd5d4GrNPedoPGOBBZ6rlegk5NE',
    appId: '1:400474185539:web:90c7e92e31b5f1d76459f6',
    messagingSenderId: '400474185539',
    projectId: 'fruits-hub-project',
    authDomain: 'fruits-hub-project.firebaseapp.com',
    storageBucket: 'fruits-hub-project.firebasestorage.app',
    measurementId: 'G-V6P0M9BFHJ',
  );
}
