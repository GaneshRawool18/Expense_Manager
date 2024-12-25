import 'package:expense_manager_app/signUpPage.dart';
import 'package:flutter/material.dart';

class LoginExpenseManager extends StatefulWidget {
  const LoginExpenseManager({super.key});

  @override
  State<LoginExpenseManager> createState() => _LoginExpenseManagerState();
}

class _LoginExpenseManagerState extends State<LoginExpenseManager> {

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Center(
          child: Column(
            children: [
              Image.asset("assets/images/ExpenseManager.png"),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Login to your Account",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Container(
                  width: 280,
                  height: 49,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromRGBO(255, 255, 255, 1),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(1, 0.5),
                          blurRadius: 2,
                          blurStyle: BlurStyle.outer)
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      controller: userNameController,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "User Name",
                          hintStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(0, 0, 0, 0.4))),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Container(
                  width: 280,
                  height: 49,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromRGBO(255, 255, 255, 1),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, 0.1),
                          blurRadius: 1,
                          blurStyle: BlurStyle.outer)
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      controller: passwordController,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(0, 0, 0, 0.4))),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const SignUpExpenseManager();
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                    width: 280,
                    height: 49,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromRGBO(14, 161, 125, 1),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            offset: Offset(1, 0),
                            blurRadius: 2,
                            blurStyle: BlurStyle.outer)
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        "Sign In ",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 230),
                child: Text("Don’t have an account? Sign up"),
              )
            ],
          ),
        ),
      ),
    );
  
    }
}