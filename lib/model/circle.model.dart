
import 'dart:math';


import 'package:dart_app/model/point.model.dart';
import 'package:dart_app/model/shape.model.dart';

// la classe Circle vas herité de la classe abstraite (extends pour faire héritage)

// lorsque on hérite d'une classe abstraite on hérite des ses methodes

class Circle extends Shape {

  Circle({required super.p1, required super.p2});

  // rayon
 double getRaduis(){

  return p1.distanceTo(p2);

 }

  @override
  double getArea() {
 // surface d'un cercle c'est egale a  piR au carrer
  double r =getRaduis();
   return pi*r*r;
  }

  @override
  double getPerimeter() {
  // perimetre est egale 2x pi xR
   double r2= getRaduis();

  return 2*pi*r2;
  }

  @override
  Map<String, dynamic> toJson() {
   return {
    "type" : 'cercle',
    "center": p1.toString(),
   "raduis": getRaduis().toStringAsFixed(2)
   };

  }

 }