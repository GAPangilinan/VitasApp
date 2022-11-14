import 'package:flutter/material.dart';

class CashInButton extends StatelessWidget {
  const CashInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Get.off(() => const CashInScreen());
      },
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 340,
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
              )
            ]),
        child: const Text(
          "CASH IN",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
