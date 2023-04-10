
import 'dart:convert';
import 'dart:io';

import 'package:dart_app/model/circle.model.dart';
import 'package:dart_app/model/rectangle.model.dart';
import 'package:dart_app/model/shape.model.dart';

class GeometricDesign {
  List <Shape> shapes =[];

  //ajouter une figurer

Shape add(Shape shape){
  shapes.add(shape);
  return shape;
}

// methode qui permet d'affiche toutes les methode du dessin

void show(){
  for (Shape shape in shapes){

    if(shape is Circle ){
      print("Raduis :${shape.getRaduis()}");
    } else if (shape is Rectangle){
      print("Largeur: ${shape.getWidth()}");
      print("Hauteur : ${shape.getHeigth()}");
    }
    print(shape.getArea());

    print(shape.getPerimeter());

    print(shape.toJson());
  }
}
//convertir une liste   en  Json

  // convertir d'abord le Json en String
 String toJson(){
  JsonEncoder jsonEncoder = const JsonEncoder.withIndent( "   " );
  return jsonEncoder.convert({"shapes":shapes});
}

// creer un fichier

void save(String fileName){
   //pour enregistrer un creer un objet file et enregister avec writeAsString()
  File file = File(fileName);
  file.writeAsStringSync(toJson());
}

}