import 'package:flutter/material.dart';
import 'package:vitas/view/widgets/cardnumberwidget.dart';
import 'package:vitas/view/widgets/cashinbutton.dart';
import 'package:vitas/view/widgets/cardnumberwidget.dart';
import 'package:vitas/view/widgets/cashierwidget.dart';
import 'package:vitas/view/widgets/cashinbutton.dart';
import 'package:vitas/view/widgets/current_round.dart';
import 'package:vitas/view/widgets/fight_number_widget.dart';

class CashInScreen extends StatelessWidget {
  const CashInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController amountController = TextEditingController();

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
                      const CardNumber(),
                      const Divider(
                        thickness: 2,
                        color: Colors.blue,
                      ),
                      const Text(
                        textAlign: TextAlign.end,
                        "CASH IN",
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
                        "By using this cash in facility, you agree that the amount will be credited to your card with a minimum fee of (0.00).",
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
                        "Upon confirmation of the transaction, the amount credited to the card is non refundable and can not be reversed.",
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
                  Center(
                    child: SizedBox(
                        width: 340,
                        child: Container(
                          height: 50,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 7)
                              ]),
                          child: TextFormField(
                            controller: amountController,
                            keyboardType: TextInputType.text,
                            obscureText: false,
                            decoration: const InputDecoration(
                              hintText: "Amount",
                              border: InputBorder.none,
                            ),
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 36,
                          width: 76,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 10,
                                )
                              ]),
                          child: const Text(
                            "Min",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 36,
                          width: 76,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 10,
                                )
                              ]),
                          child: const Text(
                            "300",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 36,
                          width: 76,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 10,
                                )
                              ]),
                          child: const Text(
                            "500",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 36,
                          width: 76,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 10,
                                )
                              ]),
                          child: const Text(
                            "1000",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 36,
                          width: 76,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 10,
                                )
                              ]),
                          child: const Text(
                            "2000",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 36,
                          width: 76,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 10,
                                )
                              ]),
                          child: const Text(
                            "3000",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 36,
                          width: 76,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 10,
                                )
                              ]),
                          child: const Text(
                            "5000",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 36,
                          width: 76,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 10,
                                )
                              ]),
                          child: const Text(
                            "Max",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CashInButton(),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 165,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 10,
                                )
                              ]),
                          child: const Text(
                            "CLEAR",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 165,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 10,
                                )
                              ]),
                          child: const Text(
                            "CANCEL",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
          ),
        )
      ],
    );
  }
}
