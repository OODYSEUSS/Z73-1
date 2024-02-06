import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

// контроллеры текстовых полей
final emailControllerReg = TextEditingController();
final passwordControllerReg = TextEditingController();
final confirmPasswordControllerReg = TextEditingController();

void clearTextFieldReg() {
  emailControllerReg.clear();
  passwordControllerReg.clear();
  confirmPasswordControllerReg.clear();
}

// регистрация в акк
void signUserUp(BuildContext context) async {
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
  try {
    if (passwordControllerReg.text == confirmPasswordControllerReg.text) {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: emailControllerReg.text,
            password: passwordControllerReg.text,
          )
          .then((_) => Navigator.pushReplacementNamed(context, '/home'));
      await FirebaseAuth.instance.currentUser!.sendEmailVerification();
    } else {
      print('Password mismatch');
      clearTextFieldReg();
    }
    clearTextFieldReg();
    Navigator.pop(context);
  } on FirebaseAuthException catch (e) {
    Navigator.pop(context);
    print(e.code);
    clearTextFieldReg();
  }
}
