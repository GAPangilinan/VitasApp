import 'package:flutter/material.dart';

class FightNumber extends StatelessWidget {
  const FightNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Text(
          textAlign: TextAlign.end,
          "FIGHT NO: 1",
          style: TextStyle(
              color: Colors.grey, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          textAlign: TextAlign.end,
          "OPEN",
          style: TextStyle(
              color: Colors.green, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
