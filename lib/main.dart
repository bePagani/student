import 'package:flutter/material.dart';
import 'package:student_app/Home.dart';

void main() {

    /*
    Orders order1 = Orders(1, "Arny", "Mif", "https://static.onecms.io/wp-content/uploads/sites/13/2017/02/28/just-friends-star-header.jpg");
    Orders order2 = Orders(2, "Linda", "Mif", "https://static.onecms.io/wp-content/uploads/sites/13/2017/02/28/just-friends-star-header.jpg");
    Orders order3 = Orders(3, "Rose", "Mif", "https://pbs.twimg.com/media/EgX3T-1UYAEBRCX.jpg");
    
    orders_mock.add(order1);
    orders_mock.add(order2);
    orders_mock.add(order3);

    */

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
