// https://www.codewars.com/kata/5a905c2157c562994900009d?authuser=0

List<int> productArray(List<int> nums) {
  List<int> result = [];
  int product = 1;
  for (int num in nums) {
    product *= num;
  }
  for (int num in nums) {
    result.add(product ~/ num);
  }
  return result;
}