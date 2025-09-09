import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD6Bd-bGRtkcNCJPkZOvDPx4VGdvW0RhP0",
            authDomain: "testecaa-30ac9.firebaseapp.com",
            projectId: "testecaa-30ac9",
            storageBucket: "testecaa-30ac9.appspot.com",
            messagingSenderId: "1051742375180",
            appId: "1:1051742375180:web:11a423722d70a05eb08d29",
            measurementId: "G-3FN34CEVKJ"));
  } else {
    await Firebase.initializeApp();
  }
}
