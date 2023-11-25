import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBI9P_YQJ1X3zz7VBNRPUsjCui_fJ1jZgU",
            authDomain: "crafthub-challange-l91su2.firebaseapp.com",
            projectId: "crafthub-challange-l91su2",
            storageBucket: "crafthub-challange-l91su2.appspot.com",
            messagingSenderId: "130983045726",
            appId: "1:130983045726:web:d7f242a20af1b701e6a2cf"));
  } else {
    await Firebase.initializeApp();
  }
}
