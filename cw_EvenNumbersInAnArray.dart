// https://www.codewars.com/kata/5a431c0de1ce0ec33a00000c?authuser=0

List<int> evenNumbers(List<int> arr, int n) {
  List<int> evens = arr.where((e) => e.isEven).toList();
  evens.removeRange(0, evens.length - n);
  return evens;
}