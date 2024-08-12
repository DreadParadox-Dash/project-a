import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class BackEndFunctions extends ChangeNotifier {
  Future emailSignIn(String email, String password) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    notifyListeners();
  }
}