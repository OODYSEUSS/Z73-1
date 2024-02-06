import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final emailControllerReset = TextEditingController();

void clearTextFieldReset() {
  emailControllerReset.clear();
}

void resetUserPassword(BuildContext context) async {
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

    await FirebaseAuth.instance
        .sendPasswordResetEmail(email: emailControllerReset.text)
        .then((_) => Navigator.pushReplacementNamed(context, '/login'));
    Navigator.pop(context);
  } on FirebaseAuthException catch (e) {
    Navigator.pop(context);
    print(e.code);
  }
}
