import 'package:flutter/material.dart';
import 'package:flutter_learing/page1.dart';
import 'package:flutter_learing/page2.dart';
import 'package:flutter_learing/page3.dart';
import 'package:flutter_learing/page4.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;
  final pages =[
    Page1(),
    Page2(),
    Page3(),
    Page4(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 20,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.teal,
            icon: Icon(Icons.message),
            title: Text("Messge"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            title: Text("Call"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pan_tool),
            title: Text("Pan tools"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.radio),
            title: Text("Readio"),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
     body: pages[_currentIndex]);
  }
}
