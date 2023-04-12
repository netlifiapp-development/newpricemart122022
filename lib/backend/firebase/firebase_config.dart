import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDzqz9oh2ojXIBelgahHHf3q4G0ECX_v1A",
            authDomain: "netlifi-app.firebaseapp.com",
            projectId: "netlifi-app",
            storageBucket: "netlifi-app.appspot.com",
            messagingSenderId: "406948018763",
            appId: "1:406948018763:web:20213a793ee7322227abce",
            measurementId: "G-C88FYE4SK7"));
  } else {
    await Firebase.initializeApp();
  }
}
