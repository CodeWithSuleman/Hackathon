import 'package:flutter/material.dart';
import 'package:for_instant_help_app/views/bottom_nav_bar_screen.dart';
import 'package:for_instant_help_app/views/login_screen.dart';

import '../utils/color_constant.dart';
import '../widgets/appbarr.dart';
import '../widgets/primary_button.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset('assets/logo2.png',
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.2),
              ),
              Text(
                'SignUp',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.022),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  labelText: 'Username',
                  hintText: 'Enter Username',
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.022),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  labelText: 'Email',
                  hintText: 'Enter Email',
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.022),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  labelText: 'Password',
                  hintText: 'Enter Password',
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.022),
              PrimaryButton(
                  callBack: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomNavBarScreen()),
                    );
                  },
                  bcolor: Color(ConstantColors.primaryColor),
                  bName: "SignUp"),
              SizedBox(height: MediaQuery.of(context).size.height * 0.022),
              Row(
                children: [
                  const Text("Already have an account"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text(
                      "Login?",
                      style:
                          TextStyle(color: Color(ConstantColors.primaryColor)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
