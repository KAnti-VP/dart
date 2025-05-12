// https://www.codewars.com/kata/5a7893ef0025e9eb50000013?authuser=0

int maxGap(nums) {
  int maxgap = 0;
  nums.sort();
  for (int i = 0; i < nums.length - 1; i++) {
    int gap = nums[i + 1] - nums[i];
    if (maxgap < gap) {
      maxgap = gap;
    }
  }
  return maxgap;
}