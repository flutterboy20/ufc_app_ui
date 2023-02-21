import 'package:flutter/material.dart';
import 'package:ufc_app_ui/utils/responsive_data.dart';

class LeftColumn extends StatelessWidget {
  const LeftColumn({super.key});
   bool isWeb() {
    return ResponsiveData.screenWidth > 1100;
  }

  @override
  Widget build(BuildContext context) {
    ResponsiveData.init(context);
    return Padding(
      padding:
          EdgeInsets.only(left: ResponsiveData.screenWidth * 0.03, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'CONOR\nMCGREGOR',
            style: TextStyle(color: Colors.black, fontSize: 45),
          ),
          const SizedBox(height: 20),
          Stack(
            children: [
              Image.asset(
                'assets/images/conor_image_2.jpg',
                width:isWeb()?200: ResponsiveData.screenWidth  * 0.3,
              ),
              const Positioned(
                bottom: 10,
                right: 10,
                child: Icon(
                  Icons.play_circle_filled,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'Conor Mcgregor: "Still More\nWork To Do"',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
              letterSpacing: 1,
              wordSpacing: 1,
            ),
          ),
          const SizedBox(height: 30),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                children: [
                  Container(
                    height: 77,
                    width: 15,
                    color: const Color(0xffdd1313),
                  ),
                  const Text(
                    'STANDING',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                  const Text(
                    '75%',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 15),
              Column(
                children: [
                  Container(
                    height: 11,
                    width: 15,
                    color: const Color(0xffdd1313),
                  ),
                  const Text(
                    'CLINCH',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                  const Text(
                    '15%',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 15),
              Column(
                children: [
                  Container(
                    height: 13,
                    width: 15,
                    color: const Color(0xffdd1313),
                  ),
                  const Text(
                    'GROUND',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                  const Text(
                    '17%',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'AGE',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'HEIGHT',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'WEIGHT',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(width: 50),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '34',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '5ft 9 in',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '145.00',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
