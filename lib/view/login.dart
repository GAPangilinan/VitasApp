import 'package:flutter/material.dart';
import 'package:vitas/view/widgets/loginbutton.dart';
import 'package:vitas/view/widgets/textform.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  late bool obscureText = true;
  late bool isRememberMe = false;

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
                  const Text(
                    "Cashier Login",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    thickness: 2,
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: SizedBox(
                      width: 300,
                      child: TextForm(
                        controller: emailController,
                        text: "Email",
                        obscure: false,
                        textInputType: TextInputType.text,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: SizedBox(
                        width: 300,
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
                            controller: passwordController,
                            keyboardType: TextInputType.text,
                            obscureText: obscureText,
                            decoration: InputDecoration(
                                hintText: "Password",
                                border: InputBorder.none,
                                suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        obscureText = !obscureText;
                                      });
                                    },
                                    child: obscureText
                                        ? const Icon(
                                            Icons.visibility_off,
                                            color: Colors.grey,
                                          )
                                        : const Icon(
                                            Icons.visibility,
                                            color: Colors.grey,
                                          ))),
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Checkbox(
                          checkColor: Colors.white,
                          activeColor: Colors.grey,
                          value: isRememberMe,
                          onChanged: (value) {
                            isRememberMe = !isRememberMe;
                            setState(() {});
                          }),
                      const Text(
                        "Remember me",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        width: 94,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () => {},
                            child: const Text(
                              "Forget Password",
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  ),
                  const Center(
                      child: SizedBox(width: 300, child: LoginButton())),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    thickness: 2,
                    color: Colors.blue,
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
