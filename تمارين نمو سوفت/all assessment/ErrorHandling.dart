double divideNumbers(double a, double b) {
  try {
    if (b == 0) throw Exception("Cannot divide by zero");
    return a / b;
  } catch (e) {
    print(e);
    return 0;
  } finally {
    print("Operation attempted");
  }
}