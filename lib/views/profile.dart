import 'package:flutter/material.dart';
import 'package:for_instant_help_app/widgets/appbarr.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.2,
                child: const ImageIcon(AssetImage("assets/user.png"))),
            const Divider(),
            const ListTile(
              leading: Text("Home"),
              trailing: Icon(Icons.home),
            ),
            const Divider(),
            const ListTile(
              leading: Text("Your Email"),
              trailing: Icon(Icons.email),
            ),
            const Divider(),
            const ListTile(
              leading: Text("Settings"),
              trailing: Icon(Icons.settings),
            ),
            const Divider(),
            const ListTile(
              leading: Text("Payment Mathod"),
              trailing: Icon(Icons.payment),
            )
          ],
        ),
      ),
    );
  }
}
