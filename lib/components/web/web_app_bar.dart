import 'package:flutter/material.dart';
import 'package:ufc_app_ui/utils/responsive_data.dart';

class WebAppBar extends StatelessWidget implements PreferredSize {
  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: Row(
        children: [
          SizedBox(
            width: ResponsiveData.screenWidth * 0.05,
          ),
          Image.asset(
            'assets/images/ufc_logo.png',
            width: 80,
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            width: 350,
            margin: const EdgeInsets.only(top: 10),
            child: const DefaultTabController(
              length: 4,
              child: TabBar(
                labelStyle:
                    TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                labelColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: Colors.white,
                indicatorColor: Colors.red,
                indicatorWeight: 8,
                tabs: [
                  Tab(child: Text("EVENTS")),
                  Tab(child: Text("RANKINGS")),
                  Tab(child: Text("ATHLETES")),
                  Tab(child: Text("NEWS")),
                ],
              ),
            ),
          )
        ],
      ),
      centerTitle: false,
      actions: [
        Row(
          children: [
            const CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('assets/images/boy.jpg'),
            ),
            const SizedBox(
              width: 15,
            ),
            const Text(
              "VIDEO",
              style: TextStyle(fontSize: 10),
            ),
            const SizedBox(
              width: 15,
            ),
            const Text(
              "CONNECT",
              style: TextStyle(fontSize: 10),
            ),
            const SizedBox(
              width: 15,
            ),
            const Text(
              "WATCH",
              style: TextStyle(fontSize: 10),
            ),
            const SizedBox(
              width: 15,
            ),
            const Text(
              "SHOP",
              style: TextStyle(fontSize: 10),
            ),
            SizedBox(
              width: ResponsiveData.screenWidth * 0.05,
            )
          ],
        ),
      ],
    );
  }
}
