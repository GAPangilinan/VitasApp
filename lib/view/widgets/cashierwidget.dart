import 'package:flutter/material.dart';

class CashierWidget extends StatefulWidget {
  const CashierWidget({super.key});

  @override
  State<CashierWidget> createState() => _CashierWidgetState();
}

class _CashierWidgetState extends State<CashierWidget> {
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
                "Juan Dela Cruz",
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
                "Cashier",
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
