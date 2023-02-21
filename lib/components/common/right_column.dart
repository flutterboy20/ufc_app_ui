import 'package:flutter/material.dart';
import 'package:ufc_app_ui/utils/responsive_data.dart';

class RightColumn extends StatelessWidget {
  const RightColumn({super.key});

  bool isWeb() {
    return ResponsiveData.screenWidth > 1100;
  }

  @override
  Widget build(BuildContext context) {
    ResponsiveData.init(context);
    return Padding(
      padding:
          EdgeInsets.only(right: ResponsiveData.screenWidth * 0.03, top: 30),
      child: Column(
        children: [
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    '63',
                    style: TextStyle(
                      color: Color(0xffdd1313),
                      fontSize: 50,
                    ),
                  ),
                  Text(
                    '%',
                    style: TextStyle(
                      color: Color(0xffdd1313),
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              const Text(
                'GRAPPLING\nACCURACY',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      Text(
                        '6',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Takedowns\nAttempted',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: const [
                      Text(
                        '4',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Takedowns\nLanded',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 40),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    '49',
                    style: TextStyle(
                      color: Color(0xffdd1313),
                      fontSize: 50,
                    ),
                  ),
                  Text(
                    '%',
                    style: TextStyle(
                      color: Color(0xffdd1313),
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              const Text(
                'STRIKING\nACCURACY',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      Text(
                        '1100',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Sig. Strikes\nAttempted',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: const [
                      Text(
                        '543',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Sig. Strikes\nLanded',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 40),
          const Text(
            'Next Match',
            style: TextStyle(color: Colors.grey, fontSize: 20),
          ),
          const SizedBox(height: 20),
          Image.asset(
            'assets/images/next_match.jpg',
            width: isWeb() ? 200 : ResponsiveData.screenWidth * 0.3,
          ),
        ],
      ),
    );
  }
}
