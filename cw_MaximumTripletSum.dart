// https://www.codewars.com/kata/5aa1bcda373c2eb596000112?authuser=0

int maxTriSum(nums) {
  List<int> lst = nums.toSet().toList();
  lst.sort();
  int sum = 0;
  for (int num in lst.sublist(lst.length - 3)) {
    sum += num;
  }
  return sum;
}