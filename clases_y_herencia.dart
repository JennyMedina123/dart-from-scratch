void main() {
Cuadrado cuadr = Cuadrado();
cuadr.Base = 20;
cuadr.Altura = 40;
print("El area es : ${cuadr.Area}");
print("El perimetro es : ${cuadr.Perimetro}");
print("El lado es : ${cuadr.Lado}");
}

class Rectangulo {

  double? Base; 

  double? Altura; 

  double get Area => Base! * Altura!;

  double get Perimetro => 2 * Base! + 2 * Altura!;
}
/** tenemos la herencia de rectangulos, clases abstractas tienen una implementacion basica  y normales, 
 * en dart no existe interface en dart esta es la forma de heredar, asi se haria las clases, de esta
 * manera tenemos herencia y polimorfismo en dart */

class Cuadrado extends Rectangulo {
    set Lado(double value) {
       Base = value; 
       Altura = value; 
    }

    double get Lado => Base!;    
}


