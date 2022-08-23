class PhoneData {
  final String value;
  final String subLable;

  PhoneData({required this.value, required this.subLable});

  static List<PhoneData> buttons1 = [
    PhoneData(value: '1', subLable: ''),
    PhoneData(value: '2', subLable: 'ABC'),
    PhoneData(value: '3', subLable: 'DEF'),
  ];
  static List<PhoneData> buttons2 = [
    PhoneData(value: '4', subLable: 'GHI'),
    PhoneData(value: '5', subLable: 'JKL'),
    PhoneData(value: '6', subLable: 'MNO'),
  ];
  static List<PhoneData> buttons3 = [
    PhoneData(value: '7', subLable: 'PORQ'),
    PhoneData(value: '8', subLable: 'TUV'),
    PhoneData(value: '9', subLable: 'WXYZ'),
  ];
  static List<PhoneData> buttons4 = [
    PhoneData(value: '*', subLable: ''),
    PhoneData(value: '0', subLable: '+'),
    PhoneData(value: '#', subLable: ''),
  ];
}