import 'package:flutter/material.dart';
import 'package:meditasionapp/theme/colorsapp.dart';

class CartItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback? prsee;

  const CartItem({
    super.key,
    required this.title,
    this.isActive = false,
    this.prsee,
  });
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Container(
            width: constraints.maxWidth / 2 - 10,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: const <BoxShadow>[
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, 1),
                  blurRadius: 5,
                  spreadRadius: -8,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  title,
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  style: const TextStyle(
                    fontFamily: 'BYekan',
                    fontSize: 14.3,
                  ),
                ),
                InkWell(
                  onTap: prsee,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: isActive ? kcolor : Colors.transparent,
                      border: Border.all(
                        color: isActive ? Colors.transparent : kcolor,
                        width: 1.3,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      color: isActive ? Colors.white : kcolor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
