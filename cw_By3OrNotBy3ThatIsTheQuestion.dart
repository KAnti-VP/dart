// https://www.codewars.com/kata/59f7fc109f0e86d705000043?authuser=0

bool divisibleByThree(String str) {
  int number = 0;
  for (String digit in str.split('')) {
    number += int.parse(digit);
    while (number - 3 >= 0) {
      number -= 3;
    } 
  }
  return number == 0;
}
