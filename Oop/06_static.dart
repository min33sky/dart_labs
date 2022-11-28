void main() {
  print('OOP 06. Static');

  Employee seulgi = Employee('슬기');
  Employee irene = Employee('아이린');
  Employee joy = Employee('조이');

  seulgi.name = '광야';
  seulgi.printNameAndBuilding();
  irene.printNameAndBuilding();

  Employee.building = 'SM타워';

  seulgi.printNameAndBuilding();
  irene.printNameAndBuilding();
  joy.printNameAndBuilding();

  Employee.printBuilding();
}

class Employee {
  // static은 instance가 아니라 class에 귀속된다.

  static String? building;
  String name;

  Employee(this.name);

  void printNameAndBuilding() {
    print('제 이름은 $name입니다. $building 건물에서 근무하고 있습니다.');
  }

  static void printBuilding() {
    print('저는 $building 건물에서 근무중입니다.');
  }
}
