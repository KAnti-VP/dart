// https://www.codewars.com/kata/62d34faad32b8c002a17d6d9?authuser=0

List<int> fifo(int n, List<int> referenceList) {
  List<int> result = List<int>.filled(n, -1);
  int index = 0;
  for (int number in referenceList) {
    if (!result.contains(number)) {
      result[index] = number;
      index = ++index % n;
    }
  }
  return result;
}