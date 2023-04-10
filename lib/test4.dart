
import 'package:dart_app/model/geometric.design.model.dart';
import 'package:dart_app/model/point.model.dart';
import 'package:dart_app/model/rectangle.model.dart';
import 'model/circle.model.dart';

void main (){

  GeometricDesign geometricDesign = GeometricDesign();

  geometricDesign.add(Circle(p1: Point(x:10, y:10,), p2: Point(x:60, y:60,),));
  geometricDesign.add(Circle(p1: Point(x:50, y:60,), p2: Point(x:160, y:90,),));
  geometricDesign.add(Rectangle(p1: Point(x:33, y:44,), p2: Point(x:23, y:89,),));
  geometricDesign.show();

  geometricDesign.save("Design.Json");
}