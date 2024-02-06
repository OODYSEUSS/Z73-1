import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final emailControllerAuth = TextEditingController();
final passwordControllerAuth = TextEditingController();

void clearTextFieldAuth() {
  emailControllerAuth.clear();
  passwordControllerAuth.clear();
}

void signUserIn(BuildContext context) async {
  try {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(
            backgroundColor: Color.fromRGBO(198, 124, 78, 1.0),
            color: Colors.white,
          ),
        );
      },
    );

    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailControllerAuth.text,
      password: passwordControllerAuth.text,
    );

    Navigator.pop(context);
    Navigator.pushReplacementNamed(context, '/home');
    clearTextFieldAuth();
  } on FirebaseAuthException catch (e) {
    Navigator.pop(context);
    clearTextFieldAuth();
    if (e.code == 'user-not-found') {
      print('No user found for that email');
    } else if (e.code == 'wrong-password') {
      print('Wrong password buddy');
    }
  }
}
