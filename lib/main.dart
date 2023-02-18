import 'package:flutter/material.dart';
import 'package:musicplayer_ui/firstPage.dart';
import 'package:musicplayer_ui/secondPage.dart';
import 'package:musicplayer_ui/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),

    );
  }
}
