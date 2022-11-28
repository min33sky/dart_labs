void main() {
  print('OOP - 01');

  Idol redVelvet = Idol('레드벨벳', ['슬기', '웬디', '아이린', '조이', '예리']);
  Idol twice = Idol('트와이스', [
    '나연',
    '정연',
    '모모',
    '사나',
    '지효',
    '미나',
    '다현',
    '채영',
    '쯔위',
  ]);

  Idol blackPink = Idol.fromList([
    ['제니', '지수', '로제', '리사'],
    '블랙핑크'
  ]);

  redVelvet.sayHello();
  redVelvet.introduce();
  twice.sayHello();
  twice.introduce();
  blackPink.sayHello();
  blackPink.introduce();
}

class Idol {
  final String name;
  final List<String> members;

  // Idol(String name, List<String> members)
  //     : this.name = name,
  //       this.members = members;

  //? 위의 코드를 아래와 같이 축약할 수 있다.
  Idol(this.name, this.members);

  //? Named Constructor를 사용해서도 Instance를 생성할 수 있다.
  Idol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];

  void sayHello() {
    print('안녕하세요, ${this.name}입니다.');
  }

  void introduce() {
    print('저희 ${this.name} 맴버는  ${this.members}입니다.');
  }
}
