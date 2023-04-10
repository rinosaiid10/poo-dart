

import 'dart:convert';

import './model/point.model.dart';

void main() {
  print("test");

  Point p1 = Point(x:10, y:70);

  print(p1.toString());

  Point p2 = Point(x: 33, y: 44);

  //calcule de la distance P par rapport a p2

  print(p1.distanceTo(p2).toStringAsFixed(2));

  print(p1.toJson());

 

  // formater objet en objet json
  JsonEncoder jsonEncoder =JsonEncoder.withIndent("");
  print(jsonEncoder.convert(p1.toJson()));

  //exple 1
  
  //Point p3 = Point. formJson({"x":34,"y":55});

  //exple 2

  Map<String , dynamic> data = new Map();
     data ["x"]= 34;
     data ["Y"]= 55;
  Point p3 = Point.formJson(data);

  Point p4 = Point.formJson({"x":25, "y":90},);



     print (p3.toString());

     print(p4.toString());


  print(jsonEncoder.convert(p3.toJson()));

}


