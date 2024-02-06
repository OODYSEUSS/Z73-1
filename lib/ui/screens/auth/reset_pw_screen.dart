import 'package:flutter/material.dart';
import 'package:z73_1/core/auth/reset_pw.dart';
import 'package:z73_1/ui/screens/auth/login_screen.dart';

class ResetPassword extends StatefulWidget {
  ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //верхняя шапка
          Stack(
            children: [
              Image.asset(
                'assets/images/top_cap2.PNG',
                fit: BoxFit.fitWidth,
              ),
              Positioned(
                top: 30,
                left: 5,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_sharp,
                    size: 35,
                    color: Color.fromRGBO(249, 249, 249, 1.0),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Forgot Your password?',
            style: TextStyle(
              color: Colors.black,
              fontSize: 34,
              fontFamily: 'Sora',
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Enter the email address associated with your account.',
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 20,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          MyTextField(
              controller: emailControllerReset,
              hintText: 'Email',
              obscureText: false),
          const SizedBox(
            height: 20,
          ),
          MyButton(
            onPressed: () => resetUserPassword(context),
            text: 'Reset',
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              'assets/images/bottom_cap.PNG',
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
