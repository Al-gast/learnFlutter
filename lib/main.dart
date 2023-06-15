import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // basic widget

    // var basic_widget = const Center(
    //   child: Padding(
    //     padding: EdgeInsets.all(8.0),
    //     child: Text(
    //       "Heaven",
    //       style: TextStyle(
    //         backgroundColor: Colors.blue,
    //         color: Colors.white,
    //         fontSize: 30,
    //       ),
    //     ),
    //   ),
    // );

    // Visible and invisible widget

    var visible_invisible_wiget = Stack(
      children: [
        Container(
          height: 400,
          width: 400,
          color: Colors.greenAccent,
        ),
        Container(
          height: 300,
          width: 300,
          color: Colors.lime,
        ),
        Container(
          height: 200,
          width: 200,
          color: Colors.lightBlue,
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.blueGrey,
        ),
      ],
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("May Apps"),
        ),
        body: visible_invisible_wiget,
      ),
    );
  }
}
