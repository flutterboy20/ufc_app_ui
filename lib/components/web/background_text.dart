import 'package:flutter/material.dart';
import 'package:ufc_app_ui/utils/responsive_data.dart';

class BackgroundText extends StatelessWidget {
  const BackgroundText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ResponsiveData.screenHeight,
      width: ResponsiveData.screenWidth,
      child:  FittedBox(
        fit: BoxFit.contain,
        child: Text("CONOR\nMCGREGOR",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.grey.shade200),),
      ),
    );
  }
}
