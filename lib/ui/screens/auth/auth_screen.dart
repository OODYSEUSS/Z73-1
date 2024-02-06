import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:z73_1/ui/screens/anboarding/adboarding_screen.dart';
import 'package:z73_1/ui/screens/home/home_screen.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const HomePage();
          } else {
            return const GetStarted();
          }
        },
      ),
    );
  }
}
