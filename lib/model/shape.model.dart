
 //classe abstraite c'est une classe on peut pas instancier
 //une classe abstraite à un sens lorsqu'il y une classe qui herite d'elle (des derivés)
 import 'package:dart_app/model/point.model.dart';

abstract class Shape {
 final Point p1;
 final Point p2;

 // constructeur
 const Shape ({
   required this.p1,
   required this.p2,
});
  //une methode abstraite  type double(getPerimeter getArea) , type Map(clé, value) toJson

double getPerimeter();

double getArea();

Map<String ,dynamic> toJson();


}