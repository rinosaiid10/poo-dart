
import 'dart:math';

class Point{
   final double x;
   final double y;


   // argument nommé ,

   // type const permet d'optimiser la memoire, const est utiliser pour les attributs qui son final
  Point({required this.x,required this.y});
// construire un tableau à partir des parametre d'un classe. formArray
  Point.fromArray(List<double>data):
       x = data[0],  y = data[1];


  double distanceTo(Point p){

    double w = x- p.x;
    double h = y- p.y;

    return sqrt(w*w +h*h);

  }
  Map<String, dynamic>toJson(){
    return {'x':x,'y':y};

}
//construire  objet un point à partir des données json
  //map :clé value

  Point.formJson(Map<String, dynamic> data):
      //  parse est utilise quand on veut convertir un string en value
  // convertir int en double , on dit d'abord avec "as int " je sais que c'est un int
       x=  (data["x"] as int ).toDouble() , y= (data["y"] as int ).toDouble();

  @override
   String toString() {
     return 'point{x: $x, y: $y}';
   }


}