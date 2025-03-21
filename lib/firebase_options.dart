import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default Firebase configuration options for the current platform.
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    // Since we don't have the actual Firebase project configuration,
    // we're creating a placeholder that will allow compilation
    return const FirebaseOptions(
      apiKey: 'AIzaSyDooFakeKeyForCompilation123456789',
      appId: '1:1234567890:android:1234567890abcdef',
      messagingSenderId: '1234567890',
      projectId: 'yourspace-placeholder',
      storageBucket: 'yourspace-placeholder.appspot.com',
    );
  }
} 