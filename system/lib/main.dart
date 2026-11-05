import 'package:system/classes/address.dart';
import 'package:system/classes/company.dart';
import 'package:system/classes/designer.dart';
import 'package:system/classes/developer.dart';
import 'package:system/classes/manger.dart';

void main() {
  Developer developer = Developer(
    name: 'fathy',
    id: 1,
    salary: -50000.0,
    address: Address(street: '123 Main St', city: 'damnhor', buildingNumber: 4),
    programmingLanguage: 'Dart',
    experience: 5,
  );
  Developer developer2 = Developer(
    name: 'samy',
    id: 3,
    salary: 50000.0,
    address: Address(street: '123  St', city: 'dahor', buildingNumber: 4),
    programmingLanguage: 'go',
    experience: 5,
  );

  Designer designer = Designer(
    name: 'mostfa',
    id: 2,
    salary: 45000.0,
    address: Address(buildingNumber: 2, city: 'benha', street: 'sandanhor'),
    designTool: 'Adobe Photoshop',
    projectsCount: 10,
  );
  developer.displayInfo();
  print('developer Bonus = ${developer.calculateBonus()}');
  designer.displayInfo();
  print('designer Bonus = ${designer.calculateBonus()}');
  Manager manager = Manager(
    id: 1,
    name: 'messi',
    department: 'IT',
    employees: [developer2, designer],
  );
  manager.displayInfo();
  Company company = Company(name: 'geno', manager: manager);
  company.addEmployee(developer);
  company.addEmployee(developer2);
  company.addEmployee(designer);
  company.addEmployee(designer);
  company.removeEmployee(developer);
  company.displayEmployees();
}
