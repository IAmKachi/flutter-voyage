// #7

double perimeter(double l, double w) {
  /// computes the perimeter of a rectangle
  /// given length `l` and width `w`
  return 2 * (l + w);
}

void main() {
  double length = 5;
  double width = 8;

  double per = perimeter(length, width);

  print(
      "The perimeter of a rectangle of length $length units and width $width units is $per units.");
}
