// https://www.codewars.com/kata/5d49c93d089c6e000ff8428c/dart

int save(List<int> sizes, int hd) {
  int result = 0;
  int sum = 0;
  for (int size in sizes) {
    sum += size;
    if (sum > hd) {
      break;
    }
    result++;
  }
  return result;
}