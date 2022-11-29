void main(List<String> args) {
  List<String> aespa = ['Karina', 'Winter', 'Giselle', 'Ningning'];

  final newAespa = aespa.map((member) {
    return '에스파 $member';
  }).toList();

  print(newAespa);

  final newAespa2 = aespa.map((member) => '에스파 $member').toList();

  print(newAespa2);

  print(aespa == aespa); // true
  print(aespa == newAespa); // false
  print(newAespa == newAespa2); // false

  // [1.jpg, 3.jpg, 5.jpg, 7.jpg, 9.jpg]로 변환하기
  String number = '13579';

  final parsed = number.split('').map((e) => '${e}.jpg').toList();

  print(parsed);
}
