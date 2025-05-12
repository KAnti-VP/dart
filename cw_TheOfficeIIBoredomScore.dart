// https://www.codewars.com/kata/57ed4cef7b45ef8774000014?authuser=0

String boredom(Map<String, String> staff) {
  Map<String, int> departments = {
    'accounts': 1,
    'finance': 2,
    'canteen': 10,
    'regulation': 3,
    'trading': 6,
    'change': 6,
    'IS': 8,
    'retail': 5,
    'cleaning': 4,
    'pissing about': 25,
  };
  int score = 0;
  for (String dep in staff.values) {
    score += departments[dep]!;
  }
  String result = 'kill me now';
  if (score > 82 && score < 100) result = 'i can handle this';
  if (score >= 100) result = 'party time!!';
  return result;
}