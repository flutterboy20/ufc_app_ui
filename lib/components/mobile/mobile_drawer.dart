import 'package:flutter/material.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            SizedBox(
              height: 40,
            ),
            Text(
              "EVENTS",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "RANKING",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "ATHLETES",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "NEWS",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
