import 'package:flutter/material.dart';

class CardNumber extends StatelessWidget {
  const CardNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                "####-####-####-4231",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.logout,
                color: Colors.grey,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                textAlign: TextAlign.start,
                "Card Number",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              Text(
                textAlign: TextAlign.end,
                "1,000,000.00",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
