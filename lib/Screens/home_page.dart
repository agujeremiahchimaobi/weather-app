import 'package:flutter/material.dart';

import '../Widgets/reusable_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                    child: const Icon(Icons.arrow_back_ios_new_rounded),
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
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.grey.shade300,
                ),
                padding: const EdgeInsets.only(
                    top: 3, right: 5, left: 10, bottom: 3),
                child: Flexible(
                  child: Row(
                    children: [
                      Image.asset('assets/images/search.png'),
                      const SizedBox(width: 15),
                      const Flexible(
                          child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search Location',
                        ),
                      )),
                      Container(
                        height: 45,
                        width: 44,
                        decoration: BoxDecoration(
                          color: const Color(0xff161616),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset('assets/images/saxup.png'),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Next Week',
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
                  const SizedBox(width: 20),
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
                  const SizedBox(width: 20),
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
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
                height: 348,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: const Color(0xff161616),
                    borderRadius: BorderRadius.circular(34),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 15,
                      )
                    ]),
                child: Column(
                  children: [
                    const Text(
                      'Potential Weather',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'sfprotxt',
                      ),
                    ),
                    const SizedBox(height: 15),
                    PotentialWeather(
                      day: '15',
                      degree: '27',
                      image: Image.asset(
                        'assets/images/suncloud.png',
                        scale: 1.2,
                      ),
                    ),
                    const Divider(
                      color: Colors.white38,
                      thickness: 3,
                    ),
                    PotentialWeather(
                      day: '16',
                      degree: '22',
                      image: Image.asset(
                        'assets/images/zap.png',
                        scale: 2.0,
                      ),
                    ),
                    const Divider(
                      color: Colors.white38,
                      thickness: 3,
                    ),
                    PotentialWeather(
                      day: '16',
                      degree: '22',
                      image: Image.asset(
                        'assets/images/bigraind.png',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
