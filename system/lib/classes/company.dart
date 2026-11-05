import 'package:system/classes/employee.dart';
import 'package:system/classes/manger.dart';

class Company {
  Company({required this.name, required this.manager});
  String name;
  Set<Employee> employees = {};
  Manager manager;

  void addEmployee(Employee employee) {
    employees.add(employee);
  }

  void removeEmployee(Employee employee) {
    if (employees.contains(employee)) {
      employees.remove(employee);
    } else {
      print('the employee desent exsist');
    }
  }

  void displayEmployees() {
    print(
      'Company employess are : ${employees.map((e) => e.name).join(' , ')} ',
    );
  }
}
