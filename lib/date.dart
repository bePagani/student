// var
// int

/*
class Orders {
  
  static var count = 0;
  
  var id;
  var name;
  var manufacturer;
  var image;
  
  // Orders(this.id, this.name, this.manufacturer);

  Orders(id, name, manufacturer, image) {
    this.id = id;
    this.name = name;
    this.manufacturer = manufacturer;
    this.image = image;
  }

}

var orders_mock = [];
*/

// Обалочка для наших данных  
// 
class Order {

  static int quantity = 0;
  // final
  // late

  var id;
  var name;
  var country;
  var buy;
/*
  Order (){
    id = 5;
    name = 'adil';
    country = 'Astana';
  }
*/

// Аргументы для заполнения
  Order (id,name,buy){

    quantity+=1;

   this.id = id;
   this.name =name;
   this.buy = buy; 
  }

  // @override
  // String toString() {
    
  //   return this.name;
  // }

}




// var integers = [1,2, 3, 4, 4,5];

// main() {

// orders_mock.add()
// orders_mock.remove(order1);
// // integers.remove(4);
// // удалить самую первую
// // integers.removeAt(2);
// // удалит предмет по аддресу index

//   var x = order1.id;
//   print(x);

// }
