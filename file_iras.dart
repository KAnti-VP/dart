import 'dart:io';

void main() {
  // 1. Hozd létre a sample.txt és a sample.csv fájlokat!
  File file = File('./bin/sample.txt');
  file.writeAsStringSync('');

  file = File('./bin/sample.csv');
  file.writeAsStringSync('');

  // 2. Hozd létre a school.txt fájlt és írd bele
  // az iskola nevét
  // irányítószám
  // utca és házszám
  // település
  file = File('./bin/school.txt');
  String content =
      "Szegedi SZC Vasvári Pál Gazdasági és Informatikai Technikum\n6722\nGutenberg u. 11.\nSzeged";
  file.writeAsStringSync(content);

  // 3. Írd hottá a school.txt fájlhoz az osztályod nevét!
  file.writeAsStringSync("\nosztály: 2/14b", mode: FileMode.append);

  // 4. Hozd létre a students.csv fájlt, mely az alábbi adatokat tartamazza:
  // vezetéknév, keresztnév, településnév (ahol laksz)
  // Felhasználó gépelje be a kért adatokat és az adatokat ments a csv fájlba!
  // Mindig egy új sort adj hozzá!
  file = File('./bin/students.csv');
  file.writeAsStringSync("lastName, firstName, city");
  print("Enter your last name: ");
  String lastName = stdin.readLineSync() ?? '';
  print("Enter your first name: ");
  String firstName = stdin.readLineSync() ?? '';
  print("Enter the city name: ");
  String city = stdin.readLineSync() ?? '';
  file.writeAsStringSync('\n$lastName, $firstName, $city',
      mode: FileMode.append);

  // 5. A csv fájl adatait olvasd be egy listába és írasd ki a listát soronként az alábbi sorrendbe:
  // településnév, vezetéknév, keresztnév
  content = file.readAsStringSync();
  List<String> rows = content.split('\n');
  for (String row in rows) {
    List<String> data = row.split(', ');
    print('${data[2]} ${data[0]} ${data[1]}');
  }
  
}
