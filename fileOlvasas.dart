import 'dart:io';

void main() {
  // a fájl elérési útja a projekt roottól
  File file = File('./bin/textfile.txt');
  String content = file.readAsStringSync();
  print('\n\tText file kiíratása egyben\n');
  printFullContent(content);

  print('\n\tText file kiíratása soronként\n');
  List<String> rows = content.split('\n');
  printLines(rows);

  print('\n\tText file kiíratása, csak az 1. sor\n');
  printFirst(rows);

  print('\n\tText file kiíratása, csak az utolsó sor\n');
  printLast(rows);

  print('\n\tCSV file kiíratása, szövegként egyben\n');
  file = File('./bin/csvfile.csv');
  content = file.readAsStringSync();
  printFullContent(content);

  print('\n\tCSV file kiíratása, szövegként soronként\n');
  rows = content.split('\n');
  printLines(rows);

  print(
      '\n\tCSV file kiíratása, egy tömbben (listában), melynek elemei a sorok\n');
  printList(rows);
  
  print(
      '\n\tCSV file kiíratása, egy tömbben (listában), mely a sor szavainak tömbjét (listáját) tartalmazza\n');
  List<List<String>> rowsData = [];
  for (String row in rows) {
    rowsData.add(row.split(', '));
  }
  printWords(rowsData);

  print('\n\tCSV file kiíratása, csak az emaileket írasd ki\n');
  printEmail(rowsData);

  print('\n\tCSV file kiíratása, csak a zipCode és city legyen kiírva\n');
  printZipCodeAndCity(rowsData);
}

void printFullContent(String text) {
  print(text);
}

void printLines(List<String> rows) {
  for (String row in rows) {
    print(row);
  }
}

void printFirst(rows) {
  print(rows.first);
}

void printLast(rows) {
  print(rows.last);
}

void printList(rows) {
  print(rows);
}

void printWords(List<List<String>> rows) {
  for (List<String> row in rows) {
    print('$row');
  }
}

void printEmail(List<List<String>> rows) {
  for (List<String> words in rows) {
    print(words[2]);
  }
}

void printZipCodeAndCity(List<List<String>> rows) {
  for (List<String> words in rows) {
    print('${words[3]}\t ${words[4]}');
  }
}
