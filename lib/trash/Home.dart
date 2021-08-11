

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'dart:convert';
// var x = 5;

// void func (yyyyy) {
//   print(yyyyy);
// }

// void main() {
//   print(x);
//   var y = 6;

//   func(y);

// }
// print(x)
/*
Безымянные функций
void func(calc) {

  calc();
}

void main () {

  func(
    () {print(5454); }
    ,
    );
}
*/

/*
GestureDetector(
  onTap: (){
    print(545454);
    // print(api_data[index]['city']);
   },
  child: Container(child:
    Image.network("")
    )
)
*/

/**
 // * String operations
 .toString();
 .split()
 .join
 .format  
 */
class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}



class _HomeState extends State<Home> {

  var orders = [
    {'id': 1, 'name': 'Alibek','image':'https://images.unsplash.com/photo-1531804055935-76f44d7c3621?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGhvdG98ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80'},
    {'id': 2, 'name': 'Arren','image':'https://static.onecms.io/wp-content/uploads/sites/13/2017/02/28/just-friends-star-header.jpg'},
  ];




  // orders[0]['id'];

  var api_data = [];
  void getData() async {
    var url = Uri.parse('https://init.kz:3407/api/');
    var response = http.get(url).then((reborn) {
      // // print(reborn[3].toString());
      var data = jsonDecode(reborn.body);
      for (var i = 0; i< data.length; i++) {
        var object = {};
        object["id"] = data[i]['id'];
        object['name'] = data[i]['name'];
        object['image'] = data[i]['image'];
        object['description'] = data[i]['description'];
        object['city'] = data[i]['city'];

        object['light'] = false;

        api_data.add(object);
      
      }
    setState(() {
      
    });
      // print(date[3].toString());
      // debugPrint(date.body.toString());
    });
    
     }
/*
  void getData() async {

      var url = Uri.parse("https://init.kz:3407/api/");
      // var response =  http.get(url).then((data) => {
        // data
      // });

      var response1 = await http.get(url);

      var data = jsonDecode(response1.body);
      // var x = {'key' : 'value'};
      for (var i = 0; i < data.length; i++) {
        var object = {};
        object['id'] = data[i]['id'];
        object['name'] = data[i]['name'];
        object['image'] = data[i]['image'];
        object['description'] = data[i]['description'];
        object['city'] = data[i]['city'];

        api_data.add(object);
      }

      debugPrint(api_data.toString());

      setState(() {
      });
      // debugPrint(data[0]['id'].toString());

  }
  */

  var orders_mock = [];

  @override
  void initState() {
    
    getData();

    super.initState();
  }

  @override
  void dispose() {
    
    super.dispose();
  }


  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
            [
              ListTile(
                tileColor: Colors.red,
                title: Text('sdsd'),
              ),
              
               ListTile(
                tileColor: Colors.green,
                                title: Text('dferrfgrege'),

              ),
               ListTile(
                tileColor: Colors.blue,                title: Text('e3232rwf'),

              ),
               ListTile(
                tileColor: Colors.amberAccent,
              ),
            ]
          )),
               /*
          SliverList(
              delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
                // To convert this infinite list to a list with three items,
                // uncomment the following line:
                // if (index > 3) return null;
                return Container( height: 150.0,
                
                decoration: BoxDecoration(
                  color: Colors.teal[100 * (index % 9)],
                  border: Border.all(color: Colors.black,width: 2)
                ),
                  child: Stack(
                    children: [
                      Image.network(orders_mock[index].image, fit: BoxFit.fitHeight,),
                      Text(orders_mock[index].name,style: TextStyle(color:Colors.white, fontSize: 16, fontWeight: FontWeight.w700 )),
                    ],
                  ),
                
                );
              },
              childCount: orders_mock.length,
            ),
          ),
          */


        /*  SliverList(
            delegate: SliverChildBuilderDelegate(
                
              (BuildContext context, int index) {
                // To convert this infinite list to a list with three items,
                // uncomment the following line:
                // if (index > 3) return null;
                return Container( height: 150.0,
                
                decoration: BoxDecoration(
                  color: Colors.teal[100 * (index % 9)],
                  border: Border.all(color: Colors.black,width: 2)
                ),
                  child: Stack(
                    children: [ 
                      Image.network(api_data[index]['image'], fit: BoxFit.fitHeight,),
                     
                      Text(api_data[index]['name']),

                      ],
                  ),
                
                );
              },
              childCount: api_data.length,

            ),

          ),*/

        SliverGrid(
          delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                var x= false;
                return 
                  GestureDetector(
                    onTap: () {
                      debugPrint("44");
                      api_data[index]['light'] = !api_data[index]['light'];

                      setState(() {
                      });
                    },
                    child:Container(
                      alignment: Alignment.center,

                      color: api_data[index]['light'] ? Colors.limeAccent : Colors.lightGreen[100 ],
                      child: Column(children: [
                        Text( api_data[index]['name'].toString() )
                      ],
                    ),
                  )
                );
              },
              childCount: api_data.length,
            ),gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1/2,))
        ],
      ),
    );
  }
}