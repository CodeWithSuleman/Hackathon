import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String bName;

  final Color bcolor;
  final VoidCallback callBack;

  const PrimaryButton(
      {super.key,
      required this.callBack,
      required this.bcolor,
      required this.bName});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          callBack();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: bcolor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ),
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
            ),
            Text(bName),
          ],
        ));
  }
}
