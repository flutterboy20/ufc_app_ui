import 'package:flutter/material.dart';
import 'package:ufc_app_ui/components/common/right_column.dart';
import 'package:ufc_app_ui/components/web/web_app_bar.dart';
import '../common/conor_image.dart';
import '../common/left_column.dart';
import 'background_text.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WebAppBar(),
      body: Stack(
        children: [
          const BackgroundText(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              LeftColumn(),
              ConorImage(),
              RightColumn(),
            ],
          ),
        ],
      ),
    );
  }
}
