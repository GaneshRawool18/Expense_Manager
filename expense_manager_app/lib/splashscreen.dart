import 'dart:async';

import 'package:expense_manager_app/loginPage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

   @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginExpenseManager()),
      );
    });
  }
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 144,
              height: 144,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(234, 238, 235, 1),
              ),
              child: Image.asset("assets/images/ExpenseManager.png"),
            ),
            const SizedBox(height: 20),
            const Text(
              "Expense Manager",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  
  }
}