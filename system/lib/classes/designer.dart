import 'package:system/classes/employee.dart';

class Designer extends Employee {
  Designer({
    required super.name,
    required super.id,
    required super.salary,
    required super.address,
    required this.designTool,
    required this.projectsCount,
  });

  String designTool;
  int projectsCount;
  @override
  double calculateBonus() {
    return super.salary * 0.1;
  }
}
