import 'dart:io';

void main() {
  print("Ingrese el primer numero: ");

  double? a = double.tryParse(stdin.readLineSync()!);
  print("Ingrese el segunndo numero:");
  double? b = double.tryParse(stdin.readLineSync()!);


  const indeterminado = "Indeterminado";
  if (a != null && b != null){
    print(
       "Suma: ${a + b}, Resta: ${a - b}, Multiplicacion: ${a * b}, Division: ${(b != 0 ? a / b : indeterminado)}");
  } 
  else 
  {
    print("por favor, ingrese valores numericos validos");
  }
}