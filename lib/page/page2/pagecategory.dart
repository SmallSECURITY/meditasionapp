import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditasionapp/page/page1/navbarwidget.dart';
import 'package:meditasionapp/page/page1/searchbox.dart';
import 'package:meditasionapp/page/page2/cartplaypage.dart';
import 'package:meditasionapp/page/page2/videoplayeritem.dart';
import 'package:meditasionapp/theme/colorsapp.dart';

class Pagecategory extends StatelessWidget {
  const Pagecategory({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      bottomNavigationBar: const NavBarWidget(),
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: size.height * 0.46,
              decoration: const BoxDecoration(
                color: klightcolor,
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage('../../assets/images/meditation_bg.png'),
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: size.height * .03,
                    ),
                    const Text(
                      'مدیتیشن',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      '20 دقیقه اموزش',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'با استفاده از مدیتیشن قدرت بدنی و ذهنی خود را\nمیتوانید خیلی افزایش دهید و عمر طولانی تری\nداشته باشید',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 14.5,
                        fontFamily: 'BYekan',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        width: size.width * .405,
                        height: 51,
                        child: const Searchbox(),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Wrap(
                      spacing: 20.0,
                      runSpacing: 20.0,
                      children: [
                        CartItem(
                          title: 'ویدیو شماره  1',
                          isActive: true,
                          prsee: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const Myvideoplayer(),
                              ),
                            );
                          },
                        ),
                        const CartItem(title: 'ویدیو شماره  2'),
                        const CartItem(title: 'ویدیو شماره  3'),
                        const CartItem(title: 'ویدیو شماره  4'),
                        const CartItem(title: 'ویدیو شماره  5'),
                        const CartItem(title: 'ویدیو شماره  6'),
                      ],
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    const Text(
                      'پیشنهاد ما',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontFamily: 'BYekan',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    Container(
                      height: 70,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.black54.withOpacity(.1),
                            spreadRadius: -10,
                            blurRadius: 20,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset('../../assets/icons/lock.svg'),
                          const SizedBox(width: 15),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'یوگا پیشرفته',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                'پیشرفته تر از قبل تمرین کنید',
                                style: TextStyle(
                                  fontFamily: 'BYekan',
                                ),
                              ),
                            ],
                          ),
                          SvgPicture.asset(
                              '../../assets/icons/Meditation_women_small.svg'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
