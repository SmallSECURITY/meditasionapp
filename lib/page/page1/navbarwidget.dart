import 'package:flutter/material.dart';
import 'package:meditasionapp/page/page1/navbaritem.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBaritem(
            image: '../assets/icons/calendar.svg',
            title: 'امروز',
          ),
          NavBaritem(
            image: '../assets/icons/gym.svg',
            title: 'تمرینات',
            isactive: true,
          ),
          NavBaritem(
            image: '../assets/icons/Settings.svg',
            title: 'تنظیمات',
          ),
        ],
      ),
    );
  }
}
