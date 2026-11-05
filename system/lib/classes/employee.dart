import 'package:system/classes/address.dart';

class Employee {
  String name;
  int id;
  double _salary;
  Address address;
  Employee({
    required this.name,
    required this.id,
    required double salary,
    required this.address,
  }) : _salary = 0 {
    this.salary = salary;
  }
  set salary(double salary) {
    if (salary > 0) {
      _salary = salary;
    } else {
      salary = 0;
    }
  }

  double get salary => _salary;

  void displayInfo() {
    print('Employee Name: $name');
    print('Employee ID: $id');
    print('Employee Salary: $_salary');
    print('Employee Address: ${address.city}');
  }

  double calculateBonus() {
    return _salary * 0.1;
  }
}
