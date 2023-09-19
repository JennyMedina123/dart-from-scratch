import 'dart:convert';
import 'dart:io';

void main (){
  print('¡Hola! Bienvenido al calculador de años.');
  print('Escribe tu nombre: ');
  String? nameInput = stdin.readLineSync();
  print('Un gusto conocerte $nameInput');
  print('Escribe tu fecha de nacimiento en formato dd/mm/yyyy: ');
  String? birthdayInput = stdin.readLineSync();
  DateTime? dateConverted = _convertToDateTime(birthdayInput!);
   if (dateConverted == null){
    print('la fecha de nacimiento es valida, nos enviaste: $birthdayInput');
    return;

   }
/*luego aca vamos a crear una intancia*/

var person = Person(
   name: nameInput,
   birthday: dateConverted,
   Age: DateTime.now().year - dateConverted.year,
);

print('Tu nombre: ${person.name}');
print('Tu fecha de nacimiento: ${person.birthday}');
print('Tu edad es: ${person.Age} años!');

}
/* En este algoritmo cogemos el string parte el / como dia, mes y año
el 0 es el dia, el 1 mes y años 2, invocamos la funcion que se creo,  
capturamos el nombre, empezamos a manipular la cadena, o tambien se le puede decir concatenar
para pasar la variable utilizamos el signoo de peso mas la variable y el ya la pone actomaticamente */ 
DateTime? _convertToDateTime(String date){
  List<String> parts = date.split('/');
  if (parts.length !=3) return null;
  return DateTime.tryParse('${parts[2]}-${parts[1]}-${parts[0]}');
}
/* en dart tambien puedes crear clases*/
class Person{
  final String? name;
  final DateTime? birthday;
  final int? Age;
  Person({this.name, this.birthday, this.Age});
}