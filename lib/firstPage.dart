import 'package:flutter/material.dart';
import 'package:musicplayer_ui/secondPage.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Center(child: Text("P L A Y - M U S I C")),
          backgroundColor: Colors.purple,
        ),
        body: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(23.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.brown),
                        hintText: "Search for a music .....",
                        focusedBorder: OutlineInputBorder(
                            // borderRadius: BorderRadius.circular(2),
                            borderSide: BorderSide(color: Colors.grey)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey))),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondPage(
                                  Text1: "Tum Hi Aana",
                                  Text2: "Jubin Natiyal",
                                )));
                  },
                  child: Card(
                    color: Colors.grey[300],
                    margin: EdgeInsets.symmetric(horizontal: 23.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/background.jpg"),
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Tum Hi Aana",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25)),
                          SizedBox(
                            width: 25,
                          ),
                          Text(" - Jubin Natiyal",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10
                  ,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondPage(
                                  Text1: "Friends",
                                  Text2: "Anne Marie",
                                )));
                  },
                  child: Card(
                    color: Colors.grey[300],
                    margin: EdgeInsets.symmetric(horizontal: 23.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/background.jpg"),
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Friends",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25)),
                          SizedBox(
                            width: 25,
                          ),
                          Text(" - Anne Marie",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10
                  ,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondPage(
                                  Text1: "Rafta Rafta",
                                  Text2: "Atif Aslam",
                                )));
                  },
                  child: Card(
                    color: Colors.grey[300],
                    margin: EdgeInsets.symmetric(horizontal: 23.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/background.jpg"),
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Rafta Rafta",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25)),
                          SizedBox(
                            width: 2,
                          ),
                          Text(" - Atif Aslam",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

      ),
    );
  }
}
