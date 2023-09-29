void main() {
  final employes = {
    'name': 'Islam',
    'surname': 'Kurbanov',
    'age': 20,
    'salary': [100, 200, 300, 400]
  };

  final employeOneName = 'Islam';
  final employeOneSurname = 'Kurbanov';
  final employeOneAge = 20;
  final employeOneSalary = [100, 200, 300, 400];

  Employee obj = Employee(name: 'Islam', surname: 'Kurbanov', age: 20);
}

class Employee {
  final String name;
  final String surname;
  final int age;
  Employee({this.name = '', this.surname = '', this.age = 0});
}
