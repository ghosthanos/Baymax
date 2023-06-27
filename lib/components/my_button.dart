import 'package:baymax/pages/darkhomepage.dart';
import 'package:baymax/pages/homepage.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;

  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Home(),
            ));
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromRGBO(173, 22, 31, 1),
                Color.fromRGBO(173, 22, 31, 1),
              ],
            )),
        child: const Center(
            child: Text(
          "Sign In",
          style: TextStyle(
            fontFamily: "SourceSansPro",
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}


//const Color.fromRGBO(173, 22, 31, 1),