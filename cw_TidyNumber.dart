// https://www.codewars.com/kata/5a87449ab1710171300000fd?authuser=0

bool tidyNumber(n) {
  List<int> c = '$n'.codeUnits;
  for (int i = 0; i < c.length - 1; i++) {
    if (c[i] > c[i + 1]) return false;
  }
  return true;
}