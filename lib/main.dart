import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'ui/screens/auth/login_screen.dart';
import 'ui/screens/auth/register_screen.dart';
import 'ui/screens/auth/reset_pw_screen.dart';
import 'ui/screens/home/home_screen.dart';

import 'ui/screens/anboarding/adboarding_screen.dart';
import 'ui/screens/auth/auth_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const Application(),
  );
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthPage(),
        '/start': (context) => const GetStarted(),
        '/login': (context) => Login(),
        '/reset': (context) => ResetPassword(),
        '/register': (context) => Register(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
