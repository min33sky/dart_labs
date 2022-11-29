void main(List<String> args) {
  Set aespaSet = {'Karina', 'Winter', 'Giselle', 'Ningning'};

  // Set도 map을 이용해 변경할 수 있다.
  final newSet = aespaSet.map((member) => '에스파 $member').toSet();

  print(newSet);
}
