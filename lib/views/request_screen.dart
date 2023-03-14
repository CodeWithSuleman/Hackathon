import 'package:flutter/material.dart';
import 'package:for_instant_help_app/utils/color_constant.dart';

class RequestScreen extends StatelessWidget {
  const RequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PrimaryAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/done.png',
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 80),
              child: Container(
                // width: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  "Your Request is Accepted",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Color(ConstantColors.primaryColor)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 80),
              child: Container(
                // width: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  "Thank For Your Attention To This Metter",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Color(ConstantColors.secondaryColor)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
