import 'package:flutter/material.dart';
import 'package:musicplayer_ui/firstPage.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                FirstPage(),
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
      Expanded(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
          Text("P L A Y", style: TextStyle(
          fontSize: 70, color: Colors.purple, fontWeight: FontWeight.bold)),
      Text("M U S I C",
          style: TextStyle(color: Colors.purple.shade300, fontSize: 30)),
      ]
    )),
    Align(
    alignment: FractionalOffset.bottomCenter,
    child: Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Home Of the Music",style: TextStyle(fontSize: 20,color: Colors.black,)),
        SizedBox(width: 20,),
        Icon(Icons.library_music_rounded,color: Colors.purple,size: 25,)
      ],
    ),
    )


    ]
    ,



    )
    ,


    );
  }
}

