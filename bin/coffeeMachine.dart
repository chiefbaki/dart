import 'dart:io';

Map<String, int> stock = {
  'coffee': 500,
  'sugar': 500,
  'milk': 200,
  'water': 1200
};

Map<String, Map<String, int>> coffeeInd = {
  'Espresso': {'coffee': 50, 'sugar': 100, 'milk': 200, 'water': 30},
  'Americano': {'coffee': 50, 'sugar': 50, 'milk': 100, 'water': 10},
  'Latte': {'coffee': 50, 'sugar': 30, 'milk': 20, 'water': 20}
};

void main(List<String> arguments) {
  runApp();
}

void runApp() {
  while (true) {
    String output = '1-espresso, 2-americano, 3-latte';
    print(output);
    String number = stdin.readLineSync()!;
    coffeeMaker(number);
    if ((stock['coffee']! <= 0) ||
        (stock['sugar']! <= 0) ||
        (stock['milk']! <= 0) ||
        (stock['water']! <= 0)) {
      print('not enough stocks');
      stdout.writeln('Do you want to increase?\nY/N');
      String answer = (stdin.readLineSync()!);
      if ((answer.toLowerCase() == 'yes') || (answer.toLowerCase() == 'y')) {
        addStock();
      } else if ((answer.toLowerCase() == 'no') ||
          (answer.toLowerCase() == 'n')) {
        print('Okay!');
        break;
      } else {
        break;
      }
    }
  }
}

void coffeeMaker(String number) {
  switch (number) {
    case '1':
      stock['coffee'] = (stock['coffee']! - coffeeInd['Espresso']!['coffee']!);
      stock['sugar'] = (stock['sugar']! - coffeeInd['Espresso']!['sugar']!);
      stock['milk'] = (stock['milk']! - coffeeInd['Espresso']!['milk']!);
      stock['water'] = (stock['water']! - coffeeInd['Espresso']!['water']!);
      print(stock);
      break;
    case '2':
      stock['coffee'] = (stock['coffee']! - coffeeInd['Americano']!['coffee']!);
      stock['sugar'] = (stock['sugar']! - coffeeInd['Americano']!['sugar']!);
      stock['milk'] = (stock['milk']! - coffeeInd['Americano']!['milk']!);
      stock['water'] = (stock['water']! - coffeeInd['Americano']!['water']!);
      print(stock);
      break;
    case '3':
      stock['coffee'] = (stock['coffee']! - coffeeInd['Latte']!['coffee']!);
      stock['sugar'] = (stock['sugar']! - coffeeInd['Latte']!['sugar']!);
      stock['milk'] = (stock['milk']! - coffeeInd['Latte']!['milk']!);
      stock['water'] = (stock['water']! - coffeeInd['Latte']!['water']!);
      print(stock);
      break;
  }
}

void addStock() {
  bool flag = true;
  while (flag) {
    stdout.writeln("1-coffee, 2-sugar, 3-milk, 4-water");
    int op = int.parse(stdin.readLineSync()!);
    switch (op) {
      case 1:
        if (stock['coffee']! <= 0) {
          stdout.writeln('How many you want to add?');
          int part = int.parse(stdin.readLineSync()!);
          stock['coffee'] = stock['coffee']! + part;
          print(stock);
          flag = false;
        } else {
          print("You have enough stock of coffee");
        }
        break;
      case 2:
        if (stock['sugar']! <= 0) {
          stdout.writeln('How many sugar you want to add?');
          int part = int.parse(stdin.readLineSync()!);
          stock['sugar'] = stock['sugar']! + part;
          print(stock);
          flag = false;
        } else {
          print("You have enough stocks of sugar");
        }
        break;
      case 3:
        if (stock['milk']! <= 0) {
          stdout.writeln('How many you want to add?');
          int part = int.parse(stdin.readLineSync()!);
          stock['milk'] = stock['milk']! + part;
          print(stock);
          flag = false;
        } else {
          print("You have enough stock of milk");
        }
        break;
      case 4:
        if (stock['water']! <= 0) {
          stdout.writeln('How many sugar you want to add?');
          int part = int.parse(stdin.readLineSync()!);
          stock['water'] = stock['water']! + part;
          print(stock);
          flag = false;
        } else {
          print("You have enough stocks of water");
        }
        break;
    }
  }
}
