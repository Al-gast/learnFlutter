import 'dart:math';

import 'package:basic_widget/screens/detail_page.dart';
import 'package:basic_widget/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // int counter = 1;
  final DateTime currentDate = DateTime.now();
  final TextEditingController _textEditingController = TextEditingController();
  String result = "";

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
    // final List<Color> myColor = [
    //   Colors.limeAccent,
    //   Colors.lightBlue,
    //   Colors.black,
    //   Colors.greenAccent
    // ];
    // final List<Widget> myList = List.generate(
    //   100,
    //   (index) => Text(
    //     "${index + 1}",
    //     style: TextStyle(
    //       fontSize: 20 +
    //           double.parse(
    //             index.toString(),
    //           ),
    //     ),
    //   ),
    // );
    // var list_view = ListView.separated(
    //   separatorBuilder: (context, index) {
    //     return Container(
    //       height: 50,
    //       color: Colors.cyan,
    //     );
    //   },
    //   itemCount: 4,
    //   itemBuilder: (context, index) {
    //     return Container(
    //       height: 300,
    //       color: myColor[index],
    //     );
    //   },
    // );
    // var list_view_generate = ListView(
    //   children: myList,
    // );

    // 04 List Tile
    // var list_tile = ListView(
    //   children: [
    //     ListTile(
    //       contentPadding: EdgeInsets.all(10),
    //       leading: CircleAvatar(),
    //       title: Text("Hello Fucking World"),
    //       subtitle: Text("The world is Fucking Fake"),
    //       trailing: Text("Now"),
    //     )
    //   ],
    // );

    // 05 Image
    // var image = Center(
    //   child: Container(
    //     width: 350,
    //     height: 500,
    //     color: Colors.amber,
    //     child: Image(
    //         fit: BoxFit.cover,
    //         image: NetworkImage(
    //             "https://images.unsplash.com/photo-1661956602153-23384936a1d3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")),
    //   ),
    // );

    // 06 Extract Widget
    // var extract_widget = ListView.builder(
    //   itemCount: 100,
    //   itemBuilder: (context, index) {
    //     return ChatItem(
    //       imageUrl:
    //           "https://images.unsplash.com/photo-1524504542391-127872011665?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80",
    //       name: "Ata",
    //       subtitle: "helohelohelo",
    //     );
    //   },
    // );

    // 07 statefull
    // var statefull = Column(
    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   children: [
    //     Text(
    //       counter.toString(),
    //       style: TextStyle(fontSize: 20 + double.parse(counter.toString())),
    //     ),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       children: [
    //         ElevatedButton(
    //           child: Icon(Icons.remove),
    //           onPressed: () {
    //             setState(() {
    //               if (counter <= 1) {
    //                 return;
    //               }
    //               counter--;
    //             });
    //           },
    //         ),
    //         ElevatedButton(
    //           onPressed: () {
    //             setState(() {
    //               counter++;
    //             });
    //           },
    //           child: Icon(Icons.add),
    //         )
    //       ],
    //     )
    //   ],
    // );

    // 08 Mapping List
    // var mapping_list = ListView(
    //     children: myList.map((data) {
    //   List myFavColor = data['favColor'];
    //   return Card(
    //     margin: EdgeInsets.all(20),
    //     child: Padding(
    //       padding:
    //           const EdgeInsets.only(top: 15, bottom: 8, right: 15, left: 15),
    //       child: Column(
    //         children: [
    //           Row(
    //             children: [
    //               CircleAvatar(),
    //               SizedBox(
    //                 width: 20,
    //               ),
    //               Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Text('Name: ${data['Name']}'),
    //                   Text('Age: ${data['Age']}')
    //                 ],
    //               )
    //             ],
    //           ),
    //           SingleChildScrollView(
    //             scrollDirection: Axis.horizontal,
    //             child: Row(
    //                 children: myFavColor.map((color) {
    //               return Container(
    //                 padding: const EdgeInsets.all(10),
    //                 margin:
    //                     const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
    //                 color: Colors.blue,
    //                 child: Text(color),
    //               );
    //             }).toList()),
    //           )
    //         ],
    //       ),
    //     ),
    //   );
    // }).toList());

    // 09 Date Time
    // var date_time = Center(
    //   child: Text(
    //     DateFormat('EEEE').format(currentDate),
    //     style: TextStyle(fontSize: 25),
    //   ),
    // );

    // 10 Tab Bar
    final List<Container> myList = List.generate(90, (index) {
      return Container(
        height: 50,
        width: 150,
        color: Color.fromARGB(
            255,
            Random().nextInt(255),
            Random().nextInt(
              255,
            ),
            Random().nextInt(255)),
      );
    });

    List<Tab> myTab = [
      const Tab(
        icon: Icon(Icons.accessible_rounded),
        text: "Tab 1",
      ),
      const Tab(
        icon: Icon(Icons.ac_unit),
        text: "Tab 2",
      ),
      const Tab(
        icon: Icon(Icons.access_time_sharp),
        text: "Tab 2",
      ),
    ];
    // const tab_bar_view = TabBarView(children: [
    //   Center(
    //     child: Text("Hello"),
    //   ),
    //   Center(
    //     child: Text("Fuck"),
    //   ),
    //   Center(
    //     child: Text("You"),
    //   ),
    // ]);

    // 11 Text filed
    // var text_filed = Center(
    //   child: Column(
    //     children: [
    //       TextField(
    //         controller: _textEditingController,
    //         decoration: InputDecoration(
    //           labelText: 'Enter your name',
    //           labelStyle: TextStyle(
    //             color: Colors.blue,
    //             fontWeight: FontWeight.bold,
    //           ),
    //           hintText: 'e.g. John Doe',
    //           hintStyle: TextStyle(
    //             color: Colors.grey,
    //           ),
    //           prefixIcon: Icon(
    //             Icons.person,
    //             color: Colors.blue,
    //           ),
    //           enabledBorder: OutlineInputBorder(
    //             borderSide: BorderSide(
    //               color: Colors.blue,
    //             ),
    //             borderRadius: BorderRadius.circular(10.0),
    //           ),
    //           focusedBorder: OutlineInputBorder(
    //             borderSide: BorderSide(
    //               color: Colors.blue,
    //               width: 2.0,
    //             ),
    //             borderRadius: BorderRadius.circular(10.0),
    //           ),
    //         ),
    //         keyboardType: TextInputType.text,
    //         textInputAction: TextInputAction.done,
    //         onChanged: (value) {
    //           setState(() {
    //             result = value;
    //           });
    //         },
    //         onSubmitted: (value) {
    //           // Handle text submission
    //         },
    //       ),
    //       Text(result)
    //     ],
    //   ),
    // );

    // 12 Grid

    var grid = GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 20,
        mainAxisSpacing: 10,
      ),
      children: myList,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "/detail": (context) => DetailPage()
      },
      // home: DefaultTabController(
      //     length: myTab.length,
      //     child: Builder(builder: (context) {
      //       return Scaffold(
      //         appBar: AppBar(
      //           title: const Text("My Apps"),
      //           bottom: TabBar(
      //             tabs: myTab,
      //           ),
      //         ),
      //         body: Text(result),
      //         floatingActionButton: FloatingActionButton(
      //           onPressed: () {
      //             showDialog(
      //               context: context,
      //               builder: (BuildContext context) {
      //                 return AlertDialog(
      //                   title: Text("CONFIRM"),
      //                   content: Text("Are you sure you want to delete?"),
      //                   actions: [
      //                     ElevatedButton(
      //                         onPressed: () {
      //                           setState(() {});
      //                           Navigator.of(context).pop();
      //                         },
      //                         child: Text("No")),
      //                     ElevatedButton(
      //                         onPressed: () {
      //                           Navigator.of(context).pop();
      //                         },
      //                         child: Text("Yes")),
      //                   ],
      //                 );
      //               },
      //             );
      //           },
      //           child: Icon(Icons.delete),
      //         ),
      //         floatingActionButtonLocation:
      //             FloatingActionButtonLocation.centerFloat,
      //   );
      // })),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String subtitle;

  const ChatItem({this.imageUrl = "", this.name = "", this.subtitle = ""});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(name),
      subtitle: Text(subtitle),
      trailing: Text("Now"),
    );
  }
}
