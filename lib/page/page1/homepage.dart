import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditasionapp/page/page1/categorywigetcard.dart';
import 'package:meditasionapp/page/page1/navbarwidget.dart';
import 'package:meditasionapp/page/page2/pagecategory.dart';
import 'package:meditasionapp/page/page1/searchbox.dart';
import 'package:meditasionapp/theme/colorsapp.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      bottomNavigationBar: const NavBarWidget(),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: const BoxDecoration(
              color: ccolor,
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage('../assets/images/undraw_pilates_gpdb.png'),
              ),
            ),
          ),

          //bottuns menu items

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 5, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: const EdgeInsets.all(14.0),
                      width: 52,
                      height: 52,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: mcolor,
                      ),
                      child: SvgPicture.asset('../assets/icons/menu.svg'),
                    ),
                  ),
                  const Text(
                    'سارا عزیز, برای مدیتیشن\n آماده ایی؟!',
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Searchbox(),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: AnimationConfiguration.staggeredList(
                      position: 4,
                      child: SlideAnimation(
                        duration: const Duration(milliseconds: 1500),
                        child: FadeInAnimation(
                          duration: const Duration(milliseconds: 1000),
                          child: GridView.count(
                            crossAxisSpacing: 20.0,
                            mainAxisSpacing: 20.0,
                            crossAxisCount: 2,
                            childAspectRatio: .85,
                            children: <Widget>[
                              BuilderItemCategory(
                                title: 'رژیم پیشنهادی',
                                image: '../assets/icons/Hamburger.svg',
                                press: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const Pagecategory(),
                                    ),
                                  );
                                },
                              ),
                              BuilderItemCategory(
                                title: 'نرمش',
                                image: '../assets/icons/Excrecises.svg',
                                press: () {},
                              ),
                              const BuilderItemCategory(
                                  title: 'مدیتیشن',
                                  image: '../assets/icons/meditation.svg'),
                              const BuilderItemCategory(
                                  title: 'یوگا',
                                  image: '../assets/icons/Hamburger.svg'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
