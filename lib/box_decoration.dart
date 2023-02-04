import 'package:flutter/material.dart';
class BoxDec extends StatelessWidget {
  final child;
  final height;
  final width;
  const BoxDec({Key? key, required this.child,required this.height,required this.width }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Center(child:child),
      height: height,
      width:width,

      decoration: BoxDecoration(

          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(8),
          boxShadow:[ BoxShadow(
            offset: Offset(5,5),
            color: Colors.grey.shade500,
            blurRadius: 15,

          ),
            BoxShadow(
              offset: Offset(-5, -5),
              color: Colors.white,
              blurRadius: 15,

            )
          ]

      ),


    );
  }
}
