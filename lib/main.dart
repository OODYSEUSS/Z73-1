import 'package:flutter/material.dart';
import 'package:z73_1/ui/pages/auth/get_started.dart';
import 'package:z73_1/ui/pages/home/home_page.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GetStarted(),
    );
  }
}
