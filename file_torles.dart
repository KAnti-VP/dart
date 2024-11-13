import 'dart:io';

void main() {
  // 1. Töröld a sample.txt fájlt!
  File file = File('./bin/sample.txt');
  try {
    file.deleteSync();
    print('A sample.txt fájl törölve.');
  } catch (exc) {
    print('$exc \n');
    print('A sample.txt fájl törlése sikertelen.');
  }

  // 2. Hibakezeléssel hozz létre egy függvényt, melynek paramétere a fájlnév, melyet törölni kell.
  // Ellenőrizze, hogy a fájlt létrezik-e.
  // Ha lézetik, akkor törölje a fájlt.
  // Visszatérési értéke boolean: ha törlődött a fájlt true, egyébként false.

  // 3. Az előző metódussal töröld a sample.csv fájlt és írasd ki, hogy sikeres volt-e a törlés vagy sem!
  print(
      'A sample.csv fájl törlése ${deleteFile('./bin/sample.csv') ? 'sikeres' : 'sikertelen'} volt.');

  // 4. Ismét töröld a sample.csv fájlt és írasd ki, hogy sikeres volt-e a törlés vagy sem!
  print(
      'A sample.csv fájl törlése ${deleteFile('./bin/sample.csv') ? 'sikeres' : 'sikertelen'} volt.');
}

bool deleteFile(String path) {
  File file = File(path);
  if (file.existsSync()) {
    file.deleteSync();
    return true;
  }
  return false;

  // vagy hibakezeléssel:
  // try {
  //   file.deleteSync();
  //   return true;
  // } catch (exc) {
  //   return false;
  // }
}
