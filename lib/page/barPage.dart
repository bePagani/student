import 'package:flutter/material.dart';
import 'package:student_app/page/home.dart';
import 'package:student_app/page/life.dart';
import 'package:student_app/page/profel.dart';
import 'package:student_app/page/sear.dart';

class BarPage extends StatefulWidget {
  const BarPage({ Key? key }) : super(key: key);

  @override
  _BarPageState createState() => _BarPageState();
}

class _BarPageState extends State<BarPage> {

  int initialIndex = 2;

  static const List<Widget> _widgetOptions = [
  homePage(),
  life(),
  sear(),
  profet(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      initialIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(initialIndex),
      bottomNavigationBar: BottomNavigationBar(
        
        
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.access_alarm),label:'kjkjk'
        ,),
          BottomNavigationBarItem(icon: Icon(Icons.dangerous), label: 'dkjhjd'
        ,),
          BottomNavigationBarItem(icon: Icon(Icons.ev_station), label: 'kdjkdj',),
          BottomNavigationBarItem(icon: Icon(Icons.no_flash), label:'kdjkdjk',),
          
        ],currentIndex: initialIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,

        onTap: _onItemTapped,
      ),
      
    );
  }
}