import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({ Key? key }) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverSafeArea(
            top: true,
            sliver: SliverToBoxAdapter(
            child: TextField(
              
            ),)),
          SliverPadding(
            padding: EdgeInsets.only(top:25,left: 25,right: 25),
            sliver: SliverToBoxAdapter(
              child: Container(
                color: Colors.tealAccent,
                height: 240,
                child: Column(
                  children: [
                    Text('New hgjgjgj\njdhfkjhkjfd'),
                    ElevatedButton(onPressed: (){},
                    child: Text('open'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,

                    ),)
                  ],
                ),
              ),
            ),
        
            ),
          SliverPadding(padding: EdgeInsets.only(left: 25, right: 25,top: 25),
          sliver: SliverToBoxAdapter(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('pupolar'),
                Text('set all'),
              
              ],

            ),
          ),
          
          )
          
          
        ],
      ),
    );
      
    
  }
}