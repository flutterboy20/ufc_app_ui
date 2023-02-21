import 'package:flutter/material.dart';
import 'package:ufc_app_ui/components/mobile/mobile_screen.dart';
import 'package:ufc_app_ui/utils/responsive_data.dart';
import '../components/web/web_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool isWeb() {
    return ResponsiveData.screenWidth > 1100;
  }

  @override
  Widget build(BuildContext context) {
    ResponsiveData.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: isWeb() ? const WebScreen() : const MobileScreen(),
      ),
    );
  }
}
