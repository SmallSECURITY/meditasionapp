import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBaritem extends StatelessWidget {
  final String image;
  final String title;
  final bool isactive;
  const NavBaritem({
    super.key,
    required this.image,
    required this.title,
    this.isactive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SvgPicture.asset(image),
        Text(
          title,
          style: isactive
              ? TextStyle(
                  fontFamily: 'BYekan',
                  color: Colors.orange.shade800,
                )
              : const TextStyle(
                  fontFamily: 'BYekan',
                ),
        ),
      ],
    );
  }
}
