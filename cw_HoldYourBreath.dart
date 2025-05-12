// https://www.codewars.com/kata/64fbfa3518692c2ed0ebbaa2/dart

import 'dart:math';

bool divingMinigame(List<int> lst) {
  int level = 10;
for (int num in lst) {
  level = num < 0 ? max(0, level - 2) : min(10, level + 4);
  if (level == 0) {
    return false;
  }
}
  return level > 0;
}