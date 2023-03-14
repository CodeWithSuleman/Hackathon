import 'package:flutter/material.dart';
import 'package:for_instant_help_app/utils/color_constant.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PrimaryAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        //SizedBox(width: MediaQuery.of(context).size.width * 0.1),
        Positioned(
          left: 8,
          top: 34,
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                size: 28,
              )),
        ),
        //  SizedBox(width: MediaQuery.of(context).size.width * 0.1),
        Positioned(
          left: 120,
          top: 45,
          child: Text(
            "Instant Help",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),

        Positioned(
          left: 300,
          top: 35,
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert_outlined,
                size: 30,
              )),
        ),
      ],
    );
  }

  @override
  Size get preferredSize {
    return const Size.fromHeight(30);
  }
}
