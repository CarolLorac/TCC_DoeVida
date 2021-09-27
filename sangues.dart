import 'package:flutter/material.dart';

class Sangues extends StatelessWidget {
  const Sangues({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Tipos sanguíneos"),
          backgroundColor: Colors.pinkAccent[400],
        ),
        body: Container(
          color: Colors.white,
          child: ListView(children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 20,
                ),
                Row(
                  //A+
                  children: [
                    Image.asset(
                      "images/A+.png",
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      width: 2,
                    ),
                    Column(
                      children: [
                        Text(
                          "Doa para:  A+  AB+ \nRecebe de:  A+  A-  O+  O-",
                          style: TextStyle(fontSize: 22),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  height: 20,
                ),
                Row(
                  //A-
                  children: [
                    Image.asset(
                      "images/A.png",
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      width: 2,
                    ),
                    Column(
                      children: [
                        Text(
                          "Doa para:  A+  A-  AB+  AB- \nRecebe de:  A-  O-",
                          style: TextStyle(fontSize: 22),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  height: 20,
                ),
                Row(
                  //B+
                  children: [
                    Image.asset(
                      "images/B+.png",
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      width: 2,
                    ),
                    Column(
                      children: [
                        Text(
                          "Doa para:  B+  AB+\nRecebe de:  B+  B-  O+  O-",
                          style: TextStyle(fontSize: 22),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  height: 20,
                ),
                Row(
                  //B-
                  children: [
                    Image.asset(
                      "images/B.png",
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      width: 2,
                    ),
                    Column(
                      children: [
                        Text(
                          "Doa para:  B+  B-  AB+  AB- \nRecebe de:  B-  O-",
                          style: TextStyle(fontSize: 22),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  height: 20,
                ),
                Row(
                  //AB+
                  children: [
                    Image.asset(
                      "images/AB+.png",
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      width: 2,
                    ),
                    Column(
                      children: [
                        Text(
                          "Doa para:  AB+ \nRecebe de:  todos os tipos",
                          style: TextStyle(fontSize: 22),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  height: 20,
                ),
                Row(
                  //AB-
                  children: [
                    Image.asset(
                      "images/AB.png",
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      width: 2,
                    ),
                    Column(
                      children: [
                        Text(
                          "Doa para:  AB+  AB-\nRecebe de:  A-  B-  AB-  O-",
                          style: TextStyle(fontSize: 22),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  height: 20,
                ),
                Row(
                  //O+
                  children: [
                    Image.asset(
                      "images/O+.png",
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      width: 2,
                    ),
                    Column(
                      children: [
                        Text(
                          "Doa para:  A+  B+  AB+  O+\nRecebe de:  O+  O-",
                          style: TextStyle(fontSize: 22),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  height: 20,
                ),
                Row(
                  //O-
                  children: [
                    Image.asset(
                      "images/O.png",
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      width: 2,
                    ),
                    Column(
                      children: [
                        Text(
                          "Doa para:  todos os tipos\nRecebe de:  O-",
                          style: TextStyle(fontSize: 22),
                        )
                      ],
                    )
                  ],
                ),
              ],
            )
          ]),
        ));
  }
}
