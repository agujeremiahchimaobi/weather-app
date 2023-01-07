import 'package:flutter/material.dart';
import 'package:weather_app/Screens/home_page.dart';
import 'package:weather_app/Screens/second_screen.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          renderView(0, const HomePage()),
          renderView(1, const SecondScreen()),
          renderView(
            2,
            Container(color: Colors.red),
          ),
          renderView(
            3,
            Container(color: Colors.red),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              label: '',
              icon: Column(
                children: [
                  Image.asset('assets/images/first.png'),
                  const SizedBox(height: 5),
                ],
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Column(
                children: [Image.asset('assets/images/second.png')],
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Column(
                children: const [
                  Icon(Icons.home_sharp),
                ],
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Column(
                children: const [
                  Icon(Icons.abc),
                ],
              ),
            ),
          ]),
    );
  }

  Widget renderView(int tabIndex, Widget view) {
    return IgnorePointer(
      ignoring: selectedIndex != tabIndex,
      child: Opacity(
        opacity: selectedIndex == tabIndex ? 1 : 0,
        child: view,
      ),
    );
  }
}
