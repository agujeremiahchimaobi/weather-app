import 'package:flutter/material.dart';

class Today extends StatelessWidget {
  const Today({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      height: 107,
      width: 76,
      decoration: BoxDecoration(
        color: const Color(0xff161616),
        borderRadius: BorderRadius.circular(17),
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 15,
          )
        ],
      ),
      child: Column(
        children: [
          Image.asset('assets/images/$image.png'),
          const Spacer(),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class Temperature extends StatelessWidget {
  const Temperature({
    Key? key,
    required this.temp,
    required this.time,
    required this.image,
  }) : super(key: key);

  final String temp;
  final String time;
  final Widget image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8, bottom: 5),
      height: 88,
      width: 62,
      decoration: BoxDecoration(
        color: const Color(0xff161616),
        borderRadius: BorderRadius.circular(17),
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 15,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            temp,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 10,
              color: Colors.white,
              fontFamily: 'sfprotxt',
            ),
          ),
          const Spacer(),
          image,
          const Spacer(),
          Text(
            time,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 10,
              color: Colors.white,
              fontFamily: 'sfprotxt',
            ),
          )
        ],
      ),
    );
  }
}

class PotentialWeather extends StatelessWidget {
  const PotentialWeather({
    Key? key,
    required this.degree,
    required this.day,
    required this.image,
  }) : super(key: key);

  final String degree;
  final String day;
  final Widget image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$degree°',
          style: const TextStyle(
            fontSize: 36,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Monday ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              '${day}th May, 2022',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        const Spacer(),
        image
      ],
    );
  }
}
