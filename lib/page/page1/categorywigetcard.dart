import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuilderItemCategory extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback? press;
  const BuilderItemCategory({
    super.key,
    required this.title,
    required this.image,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(.08),
            offset: const Offset(2.0, 2.0),
            blurRadius: 10,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Spacer(),
                  SvgPicture.asset(image),
                  const Spacer(),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'BYekan',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
