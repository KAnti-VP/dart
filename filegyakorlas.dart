import 'dart:io';

void main() {

  // 1. feladat
  List<String> content = readFile('vers.txt');
  printContent(content);

  // 2. feladat
  List<String> poetryPart = getPoetryPart(content, 3);
  print('\n 3. versszak: \n');
  printContent(poetryPart);
  print('\n');

  // 3. feladat
  content = readFile('students_en.csv');
  List<String> students = getPhysicsStidents(content);
  printContent(students);

  // 4. feladat
  String newStudent1 = "Angela;Newport;angela.newport@school.com;11A;Chemistry";
  addContent('students_en.csv', newStudent1);
  String newStudent2 = "Pablo;Picasso;pabloa.picasso@school.com;11B;Literature";
  addContent('students_en.csv', newStudent2);
  content = readFile('students_en.csv');
  print(content);

  // 5. feladat
  List<List<String>> details = getStudentsData(content);
  printStudentsDetails(details);
}

List<String> readFile(String path) {
  File file = File(path);
  List<String> content = file.readAsLinesSync();
  return content;
}

void printContent(List<String> content) {
  for (String row in content) {
    print(row);
  }
}

List<String> getPoetryPart(List<String> rows, int rowNumber) {
  int emptyRow = 0;
  List<String> poetryPart = [];
  for (String row in rows) {
    if (row == '') {
      emptyRow++;
    }
    if (emptyRow == rowNumber && row != '') {
      poetryPart.add(row);
    }
    if (emptyRow > rowNumber) {
      break;
    }
  }
  return poetryPart;
}

List<String> getPhysicsStidents(List<String> rows) {
  List<String> students = [];
  for (String row in rows) {
    if (row.contains('Physics')) {
      students.add(row);
    }
  }
  return students;
}

void addContent(String path, String data) {
  File file = File(path);
  file.writeAsStringSync('\n$data', mode: FileMode.append);
}

List<List<String>> getStudentsData(List<String> rows) {
  List<List<String>> data = [];
  for (String row in rows) {
    data.add(row.split(';'));
  }
  int lastName = 0;
  int firstName = 1;
  int className = 3;

  data.sort((a, b) {
    if (a[className] == (b[className])) {
      if (a[lastName] == (b[lastName])) {
        return a[firstName].compareTo(b[firstName]);
      } else {
        return a[lastName].compareTo(b[lastName]);
      }
    } else {
      return a[className].compareTo(b[className]);
    }
  });
  
  return data;
}

void printStudentsDetails(List<List<String>> students) {
  int lastName = 0;
  int firstName = 1;
  int className = 3;
  for (List<String> student in students) {
    print('${student[className]} ${student[lastName]} ${student[firstName]}');
  }
}
