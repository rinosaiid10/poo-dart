 import 'package:dart_app/model/circle.model.dart';
import 'package:dart_app/model/point.model.dart';
import 'package:dart_app/model/rectangle.model.dart';

import 'model/shape.model.dart';

void main (){

  Shape shape = Circle(p1: Point(x: 10, y: 20), p2: Point(x: 30, y: 60));
  print(shape.toJson());
  print(shape.getPerimeter().toStringAsFixed(2));
  print(shape.getArea().toStringAsFixed(2));
print('-------------------------------------------------------------------------');

Shape shap1 = Rectangle(p1: Point(x: 10,y:20), p2: Point(x: 30, y: 60));
  Rectangle rect1 = Rectangle(p1: Point(x: 67,y:44), p2: Point(x: 120, y: 60));

  print(rect1.toJson());
  print(rect1.getPerimeter().toStringAsFixed(2));
  print(rect1.getHeigth().toStringAsFixed(2));
  print(rect1.getHeigth().toStringAsFixed(2));
  print(rect1.getArea().toStringAsFixed(2));
  

 }