import 'package:flutter/material.dart';
//import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test Reaction',
      home: MyHomePage(title: 'Test Your Reaction'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /*int _myVariable = 0;

  void _myFunction() {
    setState(() {});
  }*/

  Color circleColor = Colors.grey[400]!;

  void _myFunction() {
    setState(() {
      print('$circleColor');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "10:00",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 16, top: 80, right: 16, bottom: 60),
        child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(9, (index) {
            return Center(
                child: GestureDetector(
              onTap: () => print(index),
              child: Container(
                width: 90.0,
                height: 90.0,
                decoration: new BoxDecoration(
                  color: circleColor,
                  shape: BoxShape.circle,
                ),
              ),
            )); //Center
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _myFunction,
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.play_arrow),
        //materialTapTargetSize: MaterialTapTargetSize.padded,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6,
        color: Colors.blueAccent,
        child: Container(
          height: 60,
        ),
      ),
    );
  }
}

//enum CircleState { readyToBePressed, waiting, pressed }
