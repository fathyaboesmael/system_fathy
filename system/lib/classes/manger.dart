import 'package:system/classes/employee.dart';

class Manager {
  Manager({
    required this.id,
    required this.name,
    required this.department,
    required this.employees,
  });
  int id;
  String name;
  String department;
  List<Employee> employees = [];
  void displayInfo() {
    print("Manager ID: $id");
    print("Manager Name: $name");
    print("Manager Department: $department");
    print("Manager Employees: ${employees.map((e) => e.name).join(' , ')}");
  }
}
