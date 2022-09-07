import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          intro(),
          loginButton(),
          signUpButton(),
        ],
      ),
    );
  }
}

Widget intro() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 50,
      right: 50,
      top: 75,
    ),
    child: Center(
      child: Column(
        children: [
          const Text(
            'Welcome to our \t food App!',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          customSizedBox(),
          Image.asset(
            'assets/images/food.png',
            scale: 5,
          )
        ],
      ),
    ),
  );
}

Widget loginButton() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 50,
      right: 50,
    ),
    child: Column(
      children: [
        customSizedBox(),
        MaterialButton(
          minWidth: double.infinity,
          height: 60,
          onPressed: () {
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => const LoginPage()));
          },
          shape: RoundedRectangleBorder(
              side: const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
              borderRadius: BorderRadius.circular(50)),
          child: const Text(
            "Login",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
        ),
      ],
    ),
  );
}

Widget signUpButton() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 50,
      right: 50,
    ),
    child: Column(
      children: [
        customSizedBox(),
        MaterialButton(
          minWidth: double.infinity,
          height: 60,
          onPressed: () {
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => const LoginPage()));
          },
          shape: RoundedRectangleBorder(
              side: const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
              borderRadius: BorderRadius.circular(50)),
          child: const Text(
            "Sign up",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
        ),
      ],
    ),
  );
}

Widget customSizedBox() {
  return const SizedBox(
    height: 35,
  );
}
