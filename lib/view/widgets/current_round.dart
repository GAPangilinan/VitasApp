import 'package:flutter/material.dart';

class CurrentRound extends StatelessWidget {
  const CurrentRound({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Expanded(
              flex: 1,
              child: Text(
                textAlign: TextAlign.left,
                "MERON",
                style: TextStyle(color: Colors.red, fontSize: 16),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                textAlign: TextAlign.center,
                "VS",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                textAlign: TextAlign.right,
                "WALA",
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Expanded(
              flex: 1,
              child: Text(
                textAlign: TextAlign.left,
                "Talisayin",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                textAlign: TextAlign.center,
                "BREED",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                textAlign: TextAlign.right,
                "Roundhead",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Expanded(
              flex: 1,
              child: Text(
                textAlign: TextAlign.left,
                "Pedro Martinez",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                textAlign: TextAlign.center,
                "OWNER",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                textAlign: TextAlign.right,
                "Ronald Marasigan",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Expanded(
              flex: 1,
              child: Text(
                textAlign: TextAlign.left,
                "10,000,000.00",
                style: TextStyle(color: Colors.red, fontSize: 16),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                textAlign: TextAlign.center,
                "BET",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                textAlign: TextAlign.right,
                "10,000,000.00",
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
