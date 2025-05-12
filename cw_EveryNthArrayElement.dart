// https://www.codewars.com/kata/5753b987aeb792508d0010e2?authuser=0

List<Object?> every(List<Object?> array, [int? interval, int? startIndex]) {
  List<Object?> result = [];
  for (int i = startIndex ?? 0; i < array.length; i += interval ?? 1) {
    result.add(array[i]);
  }
  return result;
}