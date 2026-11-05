import 'package:system/classes/employee.dart';

class Developer extends Employee {
  Developer({
    required super.name,
    required super.id,
    required super.salary,
    required super.address,
    required this.programmingLanguage,
    required this.experience,
  });

  String programmingLanguage;
  int experience;

  @override
  double calculateBonus() {
    return super.salary * 0.15;
  }
}
