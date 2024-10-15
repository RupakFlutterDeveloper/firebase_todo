import 'dart:async';

import 'package:flutter/material.dart';
import 'package:signinwith_todo/ui_screen/login_page.dart';

class SplashscreenPage extends StatelessWidget {
  const SplashscreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 5),
      () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ));
      },
    );
    return Scaffold(
        body: Center(
      child: Text("Todo App splash screen"),
    ));
  }
}
