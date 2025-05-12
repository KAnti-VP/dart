// https://www.codewars.com/kata/57ecf6efc7fe13eb070000e1

String outed(Map<String, int> meet, String boss) {
  int score = meet[boss] ?? 0;
  List<int> values = meet.values.toList();
  for (int value in values) {
    score += value;
  }
  print(score / values.length);
  return (score / values.length) <= 5 ? 'Get Out Now!' : 'Nice Work Champ!';
}