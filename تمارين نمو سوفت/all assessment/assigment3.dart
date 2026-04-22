import 'dart:math' as math show sqrt;

double calculateEuclideanDistance({
  required double x1,
  required double y1,
  required double x2,
  required double y2,
}) {
  return math.sqrt(math.pow(x2 - x1, 2) + math.pow(y2 - y1, 2));
}

@Deprecated("Use calculateEuclideanDistance instead")
double calculateDistanceOld(double x1, double y1, double x2, double y2) {
  return calculateEuclideanDistance(x1: x1, y1: y1, x2: x2, y2: y2);
}

void main() {
  print(calculateDistanceOld(1, 2, 4, 6));
}