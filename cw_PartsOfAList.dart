// https://www.codewars.com/kata/56f3a1e899b386da78000732/dart

List<List<String>> partlist(List<String> arr) {
  List<List<String>> result = [];
  for (int i = 1; i < arr.length; i++) {
    result.add([arr.sublist(0, i).join(' '), arr.sublist(i).join(' ')]);
  }
  return result;
}
