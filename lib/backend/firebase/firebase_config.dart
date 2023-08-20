import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDeCHCUyhllNwZ8TDKWUEV7fUO630P-EPo",
            authDomain: "kassa-dorpstoernooi.firebaseapp.com",
            projectId: "kassa-dorpstoernooi",
            storageBucket: "kassa-dorpstoernooi.appspot.com",
            messagingSenderId: "570785774649",
            appId: "1:570785774649:web:b4df96b446f3ca88f561e8",
            measurementId: "G-55JK7P98NB"));
  } else {
    await Firebase.initializeApp();
  }
}
