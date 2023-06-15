import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 01 basic widget
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

    // 02 Visible and invisible widget
    // var visible_invisible_wiget = Stack(
    //   children: [
    //     Container(
    //       height: 400,
    //       width: 400,
    //       color: Colors.greenAccent,
    //     ),
    //     Container(
    //       height: 300,
    //       width: 300,
    //       color: Colors.lime,
    //     ),
    //     Container(
    //       height: 200,
    //       width: 200,
    //       color: Colors.lightBlue,
    //     ),
    //     Container(
    //       height: 100,
    //       width: 100,
    //       color: Colors.blueGrey,
    //     ),
    //   ],
    // );

    // 03 List View
    final List<Color> myColor = [
      Colors.limeAccent,
      Colors.lightBlue,
      Colors.black,
      Colors.greenAccent
    ];

    final List<Widget> myList = List.generate(
      100,
      (index) => Text(
        "${index + 1}",
        style: TextStyle(
          fontSize: 20 +
              double.parse(
                index.toString(),
              ),
        ),
      ),
    );

    var list_view = ListView.separated(
      separatorBuilder: (context, index) {
        return Container(
          height: 50,
          color: Colors.cyan,
        );
      },
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
          height: 300,
          color: myColor[index],
        );
      },
    );

    var list_view_generate = ListView(
      children: myList,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("May Apps"),
        ),
        body: list_view_generate,
      ),
    );
  }
}
