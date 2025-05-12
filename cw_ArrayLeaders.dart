// https://www.codewars.com/kata/5a651865fd56cb55760000e0?authuser=0

List<int> arrayLeaders(numbers) {
  int sum = 0;
  List<int> result = [];
  for (int num in numbers.reversed) {
    if (num > sum) result.insert(0, num);
    sum += num;
  }
  return result;
}