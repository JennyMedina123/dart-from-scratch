import 'dart:io';
import 'dart:math';
//Solicita al usuario un número y eleva este número al cuadrado solo si es positivo.  
class Challenge1 {
  void run() {
    print("Ingrese un número:");
    int num = int.parse(stdin.readLineSync()!);
    if (num > 0)
    {
    /*se crea una variable llamado cuadrado y luego se concatena 
    para que nos muestre el resultado al elevarlo*/
      int cuadrado = num * num;
      print('Resultado: ${cuadrado}');
    }
    else if (num == 0)  
      print("Resultado: 0");
    else
      print("Resultado: Número negativo"); 

  }
    
}
//Solicita al usuario dos números. 
//Si el primero es mayor, devuelva su doble, de lo contrario devuelva el triple del segundo.
class Challenge2 {
  void run() {
    print("Ingrese primer número:");
    double num1 = double.parse(stdin.readLineSync()!);
    print("Ingrese segundo número:");
    double num2 = double.parse(stdin.readLineSync()!);
/* En este punto se define la variable res utilizando el double, 
para luego agregarle los 2 numeros utilizando el >= y el if tenario si el resultado del segundo es mayor entonces
se triplica o si el res, del primero es mayor se genera el doble*/
  double res = num1 >= num2 ? num1 * 2 : num2 * 3;
    print("Resultado: ${res}");
  }
}
/* Pide al usuario un número. Si es positivo, devuelve su raíz
cuadrada, de lo contrario, devuelve su cuadrado*/
class Challenge3 {
  void run() {
    print("Ingrese un número:");
    int numero = int.parse(stdin.readLineSync()!);
/* utilizando una expresion ternaria, 
se valida si el numero es > a 0, se le calcula la raiz cuadrada utilizando las funciones sqrt y pow*/
    var res = numero > 0 ? sqrt(numero): pow(numero, 2);
    print("Resultado es: ${res}");
    
  }
}
//Pide al usuario el radio de un círculo y calcula su perímetro.
class Challenge4 {
  void run() {
    print("Ingrese el radio del círculo:");
    double radio = double.parse(stdin.readLineSync()!);
    double perimetro = pi * radio * 2;
/* En este ejercicio utilizamos 2 variables, luego se multiplica pi con el radio * 2 */
    print("El Resultado es: $perimetro");
  }
}
 /* Solicita al usuario un número entre 1 y 7 y muestra el día de la
semana correspondiente, pero solo considerando los días laborables*/

class Challenge5 {
  void run() {
    print("Ingrese un número entre 1 y 7:");
    int dia = int.parse(stdin.readLineSync()!);
    switch (dia) {
      case 1:
        print("Resultado: Lunes");
        break;
      case 2:
        print("Resultado: Martes");
        break;
      case 3: 
        print("Resultado: Miercoles"); 
        break;
      case 4: 
        print("Resultado: Jueves"); 
        break;
/*Este punto me parecio el mas sencillo solo es implementar los demas dias utilizando el case */
      case 5: 
        print("Resultado: Viernes"); 
        break;
      default:
        print("Resultado: Número fuera del rango laboral");
        break;
    }  
  }
}
 /*Solicita al usuario su salario anual y, si este excede los 12000,
 muestra el impuesto a pagar que es el 15% del excedente.*/
class Challenge6 {
/*En este caso el excedente se restaria con el salario
utilice un if and else para imprimir la respuesta correcta dependiendo de la condicion de
la variable, impuesto igual a cero*/
  void run() {
    print("Ingrese su salario mensual:");
    double salario = double.parse(stdin.readLineSync()!);
    double impuesto = salario > 12000 ? 0.15 * (salario - 12000) : 0;
    if (impuesto == 0)
    print('Resultado:  No debe Impuesto');
    else  print("Resultado es: $impuesto");
  }
}
 /*Solicita dos números y muestra el residuo de la división del
primero entre el segundo*/
class Challenge7 {
  void run() {
    try {
      print("Número a dividir:");
      double n = double.parse(stdin.readLineSync()!);
      print("Divisor:");
      double divisor = double.parse(stdin.readLineSync()!);
// utilizamos el residuo % luego utilizo el try and catch y la funcion DivideByZeroException.      
      print("Resultado: ${n % divisor}");
    } catch (DivideByZeroException) {
      print("No se puede dividir por cero!");
      print("Error al realizar la operación!");
    }
  }
}
/*Calcula y muestra la suma de los números pares entre 1 y 50.*/
class Challenge8 {
  void run() {
    print("Posibles resultados:(sin entrada)");
    int suma = 0;
    for (int i = 2; i <= 50; i += 2) {
      suma += i;
    }
    print("La suma de números pares entre 1 y 50 es: $suma");
  }
}

/*Solicita al usuario los valores para dos fracciones y muestra la
   diferencia entre esas fracciones.*/

class Challenge9 {
  void run() {
    print("Ingrese numerador de la primera fracción:");
    int num1 = int.parse(stdin.readLineSync()!);
    print("Ingrese denominador de la primera fracción:");
    int den1 = int.parse(stdin.readLineSync()!);
/* En esta clase se verifico, que se incorporo 
  un constructor donde recibe unos metodos y se le agrego el metodo de restar
  tambien se le agregar, multiplicar y dividir este ejercicio me parecio el mas complejo */

    print("Ingrese numerador de la segunda fracción:");
    int num2 = int.parse(stdin.readLineSync()!);
    print("Ingrese denominador de la segunda fracción:");
    int den2 = int.parse(stdin.readLineSync()!);

    try {
      Fraccion fraccion1 = Fraccion(num1, den1);
      Fraccion fraccion2 = Fraccion(num2, den2);

      Fraccion resultado = fraccion1.restar(fraccion2);
      

      print("La diferencia de ${fraccion1} y ${fraccion2} es: $resultado");
      
    } catch (e) {
      print("Error: $e.Message");
    }
  }
}

class Fraccion {
  int numerador = 0;
  int denominador = 0;

  Fraccion(numerador, denominador) {
    if (denominador == 0) 
    {
      throw Exception("El denominador no puede ser cero.");
    }

    this.numerador = numerador;
    this.denominador = denominador;
  }

  Fraccion sumar(Fraccion otra) {
    int nuevoNumerador = numerador * otra.denominador + otra.numerador * denominador;
    int nuevoDenominador = denominador * otra.denominador;
    return Fraccion(nuevoNumerador, nuevoDenominador);
  }

  Fraccion  restar(Fraccion otra) {
    int nuevoNumerador = this.numerador * otra.denominador - otra.numerador * this.denominador;
    int nuevoDenominador = this.denominador * otra.denominador;
      return Fraccion(nuevoNumerador, nuevoDenominador);
  }
// se valido cuando el numerador es cero se retorna a cero, o si no el fraccionario da fraccion.
   @override
  String toString() {
    return numerador == 0? "0" : "$numerador/$denominador";
  
  }
  
}
//Pide una palabra al usuario y muestra la longitud de esa palabra.
class Challenge10 {
  void run() 
// en este punto se utiliza el atributo .Length, sirve para retornar el numero de caracteres
  {
    print("Introduce una palabra:");
    String palabra = stdin.readLineSync()!;
    print("El resultado de la palabra es: ${palabra.length}");
  }
}
//Pide al usuario cuatro números y muestra el promedio.
class Challenge11 {
  void run() {
    print("Introduce el primer número:");
    double num1 = double.parse(stdin.readLineSync()!);
    print("Introduce el segundo número:");
    double num2 = double.parse(stdin.readLineSync()!);
    print("Introduce el tercer número:");
    double num3 = double.parse(stdin.readLineSync()!);
// se creo otra variable, de tipo double y se divide por 4
    print("Introduce el cuarto número:");
    double num4 = double.parse(stdin.readLineSync()!);
    double promedio = (num1 + num2 + num3 + num4) / 4;
    print("El promedio de los cuatro números es: $promedio");
  }
}
/* Pide al usuario cinco números y muestra el más pequeño*/
// este ejercicio fue uno de los 2 mas facil que me a parecido 
//se debe utillizar la funcion reduce. (Min).
class Challenge12 {
  void run() {
    List<int> numeros = [];
    for (int i = 0; i < 5; i++) {
      print("Introduce el número ${i + 1}:");
      numeros.add(int.parse(stdin.readLineSync()!));
    }
    print("El Resultado más pequeño de la lista es: ${numeros.reduce(min)}");
  }
}
/*Pide una palabra al usuario y devuelve el número de
     vocales en esa palabra.*/
     /* En este punto se agrego 3 objetos y utilizando 
     los metodos ToArray, Contains and counts.*/
class Challenge13 {
  void run() {
    print("Introduce una palabra:");
    String palabra = stdin.readLineSync()!;
   {
    int conteo = 0;
  for (int i = 0; i < palabra.length; i++) {
    // Convierte el carácter a minúsculas para hacer la comparación más fácil
    var letra = palabra[i].toLowerCase();

    // Verifica si la letra es una vocal
    if (letra == 'a' || letra == 'e' || letra == 'i' || letra == 'o' || letra == 'u') {
      conteo++;
    }
  }
    print("La cantidad de vocales es: ${(conteo)}.");
    }
  }
}
 /* Pide un número al usuario y devuelve el factorial de ese número.*/
/* se crea 2 objetos, en el if se le incorpora la variable resul, y utilizamos el ciclo for*/
class Challenge14 {
  void run() {
    print("Introduce un número:");
    int numero = int.parse(stdin.readLineSync()!);
    int  resultado = numero;
    if (resultado > 1) 
    for (int i = 1; i < numero; i++)
    {
    resultado = resultado * i;
    }
      print("El Resultado factorial es: ${resultado}.");
  }
}
 /*Pide un número al usuario y verifica si está en el rango de 10 a 20
   (ambos incluidos).*/
 /*En este punto utilice 1 variable de tipo int, tambien utilizando condiciones como if and else*/
class Challenge15 {
  void run() {
    print("Introduce un número:");
    int numero = int.parse(stdin.readLineSync()!);
    if (numero >= 10 && numero <= 20) {
      print("Resultado: $numero está en el rango.");
    } else {
      print("Resultado: $numero fuera del rango.");
    }
  }
}