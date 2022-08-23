import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({
    Key? key,
    required this.number,
    required this.title,
  }) : super(key: key);
  
  final String number;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: const TextStyle(
            color: Color(0xff81808e),
            fontSize: 32,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            color: Color(0xffa1a1ad),
            fontSize: 11,
          ),
        ),
      ],
    );
  }
}