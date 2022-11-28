void main() {
  print('OOP 04. Inheritance(상속)');

  print('------ Idol ------');
  Idol aespa = Idol(name: 'Aespa', membersCount: 4);
  aespa.sayName();
  aespa.sayMembersCount();

  print('------ Boy Group ------');
  BoyGroup bts = BoyGroup('BTS', 7);
  bts.sayName();
  bts.sayMembersCount();
  bts.sayMale();

  print('------ Girl Group ------');
  GirlGroup Ive = GirlGroup('Ive', 5);
  Ive.sayName();
  Ive.sayMembersCount();
  Ive.sayFemale();

  print('------ Type Comparison ------');
  print(aespa is Idol);
  print(aespa is GirlGroup);
  print(aespa is BoyGroup);

  print('------ Type Comparison 2 ------');
  print(bts is Idol);
  print(bts is GirlGroup);
  print(bts is BoyGroup);

  print('------ Type Comparison 3 ------');
  print(Ive is Idol);
  print(Ive is GirlGroup);
  print(Ive is BoyGroup);
}

class Idol {
  String name;
  int membersCount;

  Idol({
    required this.name,
    required this.membersCount,
  });

  void sayName() {
    print('안녕하세요, ${this.name}입니다.');
  }

  void sayMembersCount() {
    print('저희 ${this.name}은 ${this.membersCount}명입니다.');
  }
}

class BoyGroup extends Idol {
  BoyGroup(String name, int membersCount)
      : super(name: name, membersCount: membersCount);

  void sayMale() {
    print('저희 ${this.name}은 남자 그룹입니다.');
  }
}

class GirlGroup extends Idol {
  GirlGroup(String name, int membersCount)
      : super(name: name, membersCount: membersCount);

  void sayFemale() {
    print('저희 ${this.name}은 여자 그룹입니다.');
  }
}
