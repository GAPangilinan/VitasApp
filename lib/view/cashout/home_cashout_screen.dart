import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitas/view/cashout/cashout_screen.dart';
import 'package:vitas/view/cashout/cashout_screen.dart';

import '../cashin/cashin_screen.dart';
import '../widgets/cashierwidget.dart';

class HomeCashOutScreen extends StatelessWidget {
  const HomeCashOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/background.jpg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
                child: Container(
              padding: const EdgeInsets.all(15.0),
              width: double.infinity,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/images/logo.png",
                          height: 100,
                          width: 100,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const CashierWidget(),
                      const Divider(
                        thickness: 2,
                        color: Colors.blue,
                      ),
                      const Text(
                        textAlign: TextAlign.end,
                        "CASH OUT",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      const Divider(
                        thickness: 2,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        textAlign: TextAlign.start,
                        "Important:",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        textAlign: TextAlign.justify,
                        "By using this cash out facility, you agree that the amount will be debited to your card with a minimum fee of (50.00).",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        textAlign: TextAlign.justify,
                        "Upon confirmation of the transaction, the amount debited to the card is non refundable and can not be reversed.",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                          alignment: Alignment.centerLeft,
                          child: Switch(
                            value: true,
                            onChanged: ((value) => {}),
                            activeColor: Colors.green,
                            activeTrackColor: Colors.white,
                            inactiveThumbColor: Colors.white,
                            inactiveTrackColor: Colors.white,
                          )),
                      const Text(
                        textAlign: TextAlign.justify,
                        "Surrender Card",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(() => const CashOutScreen());
                          },
                          child: Image.asset(
                            "assets/images/qr icon.png",
                            height: 200,
                            width: 150,
                          ),
                        ),
                        Image.asset(
                          "assets/images/nfc icon.png",
                          height: 200,
                          width: 150,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
          ),
        )
      ],
    );
  }
}
