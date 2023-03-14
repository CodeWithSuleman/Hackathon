import 'package:flutter/material.dart';
import 'package:for_instant_help_app/utils/color_constant.dart';
import 'package:for_instant_help_app/views/signup_screen.dart';
import 'package:for_instant_help_app/widgets/primary_button.dart';

import '../widgets/appbarr.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Center(
                child: Image.asset('assets/logo2.png',
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.2),
              ),
              Text(
                'LogIn',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
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
                  callBack: () {},
                  bcolor: Color(ConstantColors.primaryColor),
                  bName: "LogiIn"),
              SizedBox(height: MediaQuery.of(context).size.height * 0.022),
              Row(
                children: [
                  const Text("Did not have an account"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()),
                        );
                      },
                      child: Text(
                        "SignUp?",
                        style: TextStyle(
                            color: Color(ConstantColors.primaryColor)),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
