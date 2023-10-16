// контроллеры текстовых полей
import 'package:flutter/material.dart';

final usernameControllerReg = TextEditingController();
final passwordControllerReg = TextEditingController();
final confirmPasswordControllerReg = TextEditingController();
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
}
