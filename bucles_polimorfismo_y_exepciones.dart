// Bucles polimorfismo y exepciones
import 'dart:async';
import 'dart:io';
import 'dart:math';

void main() {
 Circulo Circ =  Circulo();
 Circ.Radio = 20;
 var result_area = Circ.Area();
 var result_perim = Circ.Perimetro();

 print(
      "El area es: ${result_area} y el perimetro es: ${result_perim} el nuevo radio es: ${Circ.Add10()}");

  int prev = 0, next = 1, sum;
  for (int i = 0; i < 10; i++) {
    print(prev);
    sum = prev + next;
    prev = next;
    next = sum;
  }
  /* En este punto se utilizo una especie de serie fionaccy, tambien se hizo un try, catch, capturar el tipo de exepcion. luego vamos a coger varios numeros para dividir 
  generamos una excepcion, calculamos cual fue la base del perimetro, Area y radio. esto se implemento con C#
  pero ya se hizo con dart */

try
{
print("Numero a dividir:");
double n = double.parse(stdin.readLineSync()!);
print("Divisor:");
double divisor = double.parse(stdin.readLineSync()!);
if (divisor == 0) {
    throw ArgumentError("No se puede dividir por cero!");
}

   print("Resultado: ${n / divisor}");
} on ArgumentError catch (e){
   print(e.message);
}
catch (e) {
   print("Error desconocido.");
}
}
abstract class ExtraCalculations {
    double Add10();
}
abstract class Figura {
  double Area();
  double Perimetro();
}


class Circulo implements Figura, ExtraCalculations {

    double? Radio;
    @override
    double Area() => pi * Radio! * Radio!;
    @override
    double Perimetro() => 2 * pi * Radio! * Radio!;
    @override
    double Add10(){
        return Radio! + 10;
    }

}