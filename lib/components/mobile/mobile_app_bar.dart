import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget implements PreferredSize {
  // final GlobalKey<ScaffoldState> scaffoldKey;
  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(60);
  const MobileAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: Image.asset(
        'assets/images/ufc_logo.png',
        width: 80,
      ),
    );
  }
}
