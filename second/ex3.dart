// Exercise 3
void main() {
  final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  scores.sort();

  var lowestGrade = scores[0];
  var highestGrade = scores[scores.length - 1];

  print('Highest grade: $highestGrade\nLowest grade: $lowestGrade');

  var bGrades = scores.where((grade) => grade >= 80 && grade <= 90);

  print('B grades are $bGrades');
}
