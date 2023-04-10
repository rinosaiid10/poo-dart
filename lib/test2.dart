
import 'package:dart_app/model/point.model.dart';

void main (){


  Point p1 = Point(x: 10, y: 20);
  Point p2 = Point(x: 10, y: 20);

  print(p1.toJson());
  print(p2.toJson());

}