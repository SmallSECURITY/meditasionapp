import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Searchbox extends StatelessWidget {
  const Searchbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 20),
      height: 55,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(26)),
        color: Colors.white,
      ),
      child: TextField(
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: '....جستجو کنید',
          hintStyle: const TextStyle(fontFamily: 'BYekan', fontSize: 12),
          icon: SvgPicture.asset('../assets/icons/search.svg'),
        ),
      ),
    );
  }
}
