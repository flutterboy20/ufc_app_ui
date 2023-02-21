import 'package:flutter/material.dart';

import '../../utils/responsive_data.dart';
import '../common/conor_image.dart';
import '../common/left_column.dart';
import '../common/right_column.dart';
import 'mobile_app_bar.dart';
import 'mobile_drawer.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MobileAppBar(),
      endDrawer: const MobileDrawer(),
      body: ListView(
        children: [
          Column(
            children: [
              Text(
                'CONOR\nMCGREGOR',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 50,
                ),
              ),
              SizedBox(
                height: ResponsiveData.screenHeight - 230,
                child: const Center(
                  child: ConorImage(),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ResponsiveData.screenHeight * 0.05),
                child: const Divider(
                  color: Colors.black,
                  thickness: 2,
                  height: 1,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  LeftColumn(),
                  RightColumn(),
                ],
              ),
              const SizedBox(height: 20),
            ],
          )
        ],
      ),
    );
  }
}
