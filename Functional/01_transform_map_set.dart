void main() {
  List<String> aespa = ['Karina', 'Winter', 'Giselle', 'Ningning', 'Karina'];

  print(aespa);
  print(aespa.asMap()); // Map으로 변환
  print(aespa.toSet()); // Set으로 변환

  Map aespaMap = aespa.asMap();

  print(aespaMap.keys); // Map의 key만 추출 (iterable type)
  print(aespaMap.keys.toList()); // Map의 key만 추출 (list type)
  print(aespaMap.values.toList()); // Map의 value만 추출 (list type)

  Set aespaSet = Set.from(aespa);
  print(aespaSet.toList()); // Set을 List로 변환
}
