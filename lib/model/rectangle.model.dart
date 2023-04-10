

 import 'package:dart_app/model/shape.model.dart';

class Rectangle extends Shape{
  Rectangle({required super.p1, required super.p2});

  double getWidth(){
   // abs() permet de retourner la valeur absolue
   return (p2.x - p1.x).abs();
  }
  double getHeigth(){
   // abs() permet de retourner la valeur absolue
   return (p2.y - p1.y).abs();
  }


  @override
  double getArea() {
   double h = getHeigth();
   double w = getWidth();
    return h*w;
  }

  @override
  double getPerimeter() {
   return 2* (getHeigth()+getWidth());
  }

  @override
  Map<String, dynamic>toJson() {
     return {
      "Type" : 'Rectangle',
     "x": p1.x,
      "y": p1.y,
      "width": getWidth(),
      "heigth":getHeigth()

     };
  }


 }