class Employee {
  void work() => print("Employee working");
}

class Manager extends Employee {
  @override
  void work() => print("Manager managing");
}

class SeniorManager extends Manager {
  @override
  void work() => print("Senior Manager leading");
}