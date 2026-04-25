
double calculateBMI(double weight, double height) {
  return weight / (height * height);
}

void displayName(String name, [String? title]) {
  print("${title ?? ""} $name");
}

void registerUser({required String name, required String email}) {
  print(name);
}
int counter = 0;

void increment() {
  counter++;
}

bool isPositive(int n) => n > 0;