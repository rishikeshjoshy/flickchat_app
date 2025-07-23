import 'dart:async';

import'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // State variable to control the cursor's visibility
  bool _isCursorVisible = true;
  late Timer _cursorTimer;
  late Timer _navigationTimer;

  @override
  void initState(){
    super.initState();

    // Timer to handle the blinking cursor effect
    _cursorTimer = Timer.periodic(const Duration(milliseconds: 500), (timer){
        if (mounted)
          {
            setState(() {
              _isCursorVisible = !_isCursorVisible;
            });
          }
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

    );
  }
}
