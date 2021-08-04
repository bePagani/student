import 'package:flutter/material.dart';

import 'package:student_app/date.dart';


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

  var orders_mock = [];

  @override
  void initState() {
    /*
      var order1 = Order();
      print(order1.id);
      print(order1.name);
      print(order1.country);
    */

    var order1 = Order("1234","sultan", "Iphone17");
    print('ИД: ${order1.id} ${order1.name} \t ${order1.buy} \t ${Order.quantity}');

    var order2 = Order("2","Aren", "Iphone7");
    print('ИД: ${order2.id} \t ${order2.name} \t \t ${order2.buy} \t ${Order.quantity}');

    var order3 = Order("3","Mouzer", "Iphone2");
    print('ИД: ${order3.id} \t ${order3.name} \t ${order3.buy} \t ${Order.quantity}');

    
    orders_mock.add(order1);
    // orders_mock.length
    // Длинна нашего листа
    print(orders_mock.length);

    orders_mock.add(order2);
    print(orders_mock.length);

    orders_mock.add(order3);
    print(orders_mock.length);


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
          SliverList(delegate: SliverChildListDelegate(
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
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('grid item $index'),
                );
              },
              childCount: 20,
            ),
          ),
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


          SliverList(
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
                      Text(orders_mock[index].name)
                      ],
                  ),
                
                );
              },

              childCount: orders_mock.length,

            ),

          ),

        ],
      ),
    );
  }
}