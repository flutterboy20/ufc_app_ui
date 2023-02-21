import 'package:flutter/material.dart';

class ConorImage extends StatelessWidget {
  const ConorImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/conor.png'),
        const Positioned(
            top: 110,
            right: 0,
            child: Text(
              '#1',
              style: TextStyle(
                color: Color(0xffdd1313),
                fontSize: 180,
              ),
            ))
      ],
    );
  }
}
