import 'package:flutter/material.dart';

import '../Widgets/reusable_widgets.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(25, 50, 25, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 54,
                    width: 53,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffD5D5D5),
                      ),
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Image.asset('assets/images/sax.png'),
                  ),
                  const Spacer(),
                  Container(
                    height: 54,
                    width: 53,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffD5D5D5),
                      ),
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Image.asset('assets/images/notification.png'),
                        ),
                        const Positioned(
                          right: 10,
                          bottom: 35,
                          child: CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 25, 20, 20),
                    width: MediaQuery.of(context).size.width,
                    height: 186,
                    decoration: BoxDecoration(
                        color: const Color(0xff161616),
                        borderRadius: BorderRadius.circular(34),
                        boxShadow: const [
                          BoxShadow(color: Colors.black54, blurRadius: 15),
                        ]),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Tuesday, 14  May',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'sfprotxt',
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                              ),
                            ),
                            const Text(
                              'Los Angeles',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'sfprotxt',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Stack(
                              children: const [
                                Text(
                                  '29',
                                  style: TextStyle(
                                    fontSize: 64,
                                    fontFamily: 'sfprotxt',
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xffdcdcdc),
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  child: Text(
                                    'oC',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'sfprotxt',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Sunny Cloudy',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'fsprotxt',
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120, top: 60),
                    child: Image.asset(
                      'assets/images/cloud.png',
                    ),
                  )
                ],
              ),
              const SizedBox(height: 25),
              Row(
                children: const [
                  Text(
                    'Today',
                    style: TextStyle(
                      color: Color(0xff4B4A4B),
                      fontSize: 21,
                      fontFamily: 'sfprotxt',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Next 14 Days',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'sfprotxt',
                      color: Color(0xff4B4A4B),
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 10,
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(
                    child: Today(
                      image: 'sunlrain',
                      text: 'Sunny rainy',
                    ),
                  ),
                  SizedBox(width: 40),
                  Expanded(
                    child: Today(
                      image: 'Zaps',
                      text: 'Thunder',
                    ),
                  ),
                  SizedBox(width: 40),
                  Expanded(
                    child: Today(
                      image: 'midsnow',
                      text: '7km/h\nwind',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              const Text(
                'Temperature',
                style: TextStyle(
                  color: Color(0xff4B4A4B),
                  fontSize: 21,
                  fontFamily: 'sfprotxt',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  Expanded(
                    child: Temperature(
                      temp: '18oC',
                      time: '06:00',
                      image: Image.asset(
                        'assets/images/sunlrain.png',
                        scale: 1.5,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Temperature(
                      temp: '18oC',
                      time: '06:00',
                      image: Image.asset(
                        'assets/images/sunlrain.png',
                        scale: 1.5,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Temperature(
                      temp: '18oC',
                      time: '06:00',
                      image: Image.asset(
                        'assets/images/raind.png',
                        scale: 1.2,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Temperature(
                      temp: '18oC',
                      time: '06:00',
                      image: Image.asset(
                        'assets/images/zap.png',
                        height: 40,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
