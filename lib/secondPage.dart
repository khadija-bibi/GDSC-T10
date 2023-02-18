import 'package:flutter/material.dart';
import 'package:musicplayer_ui/box_decoration.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key,required this.Text1,required
  this.Text2}) : super(key: key);
  final String Text1;
  final String Text2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: (){Navigator.pop(context);},
                    child: BoxDec(
                        child: Icon(Icons.arrow_back), height: 60.0, width: 60.0),
                  ),
                  SizedBox(width: 75),
                  Text("P L A Y L I S T", style: TextStyle(fontSize: 15)),
                  SizedBox(width: 70),
                  BoxDec(child: Icon(Icons.menu), height: 60.0, width: 60.0),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              BoxDec(
                  child: Column(
                    children: [
                      ClipRect(child: Image.asset("assets/background.jpg")),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(Text1,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                Text2,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.purple,
                              ))
                        ],
                      ),
                    ],
                  ),
                  height: 300.0,
                  width: 400.0),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("0:00"),
                  Icon(Icons.shuffle_rounded),
                  Icon(Icons.repeat),
                  Text("4:08")
                ],
              ),
              SizedBox(height: 60),
              BoxDec(
                  child: LinearProgressIndicator(
                    minHeight: 8,
                    value: 0.8,
                    color: Colors.purpleAccent,
                    backgroundColor: Colors.white70,
                  ),
                  height: 30.0,
                  width: 300.0),
              SizedBox(height: 60),
              Row(
                children: [
                  Expanded(
                      child: BoxDec(
                          child:
                              Icon(Icons.skip_previous_rounded, color: Colors.purple,size: 50),
                          height: 80.0,
                          width: 80.0)),
                  Expanded(
                      child: BoxDec(
                          child: Icon(Icons.pause_circle_filled_rounded,
                              color: Colors.purple,size: 50),
                          height: 80.0,
                          width: 80.0)),
                  Expanded(
                      child: BoxDec(
                          child: Icon(Icons.skip_next_rounded, color: Colors.purple,size: 50),
                          height: 80.0,
                          width: 80.0)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
