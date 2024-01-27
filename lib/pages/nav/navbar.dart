// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:super_applicaiton/pages/home/home.dart';

import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class NavbarPages extends StatefulWidget {
  const NavbarPages({Key? key}) : super(key: key);

  @override
  _NavbarPagesState createState() => _NavbarPagesState();
}

class _NavbarPagesState extends State<NavbarPages> {
  final Color navigationBarColor = Colors.white;
  int selectedIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: navigationBarColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: <Widget>[
            const HomePage(),
            Container(
              alignment: Alignment.center,
              child: Icon(
                Icons.favorite_rounded,
                size: 56,
                color: Colors.red[400],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Icon(
                Icons.email_rounded,
                size: 56,
                color: Colors.green[400],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Icon(
                Icons.folder_rounded,
                size: 56,
                color: Colors.blue[400],
              ),
            ),
          ],
        ),
        bottomNavigationBar: WaterDropNavBar(
          waterDropColor: const Color(0xFFEB963F),
          inactiveIconColor: Colors.black,
          backgroundColor: navigationBarColor,
          onItemSelected: (int index) {
            setState(() {
              selectedIndex = index;
            });
            pageController.animateToPage(selectedIndex,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeOutQuad);
          },
          selectedIndex: selectedIndex,
          barItems: <BarItem>[
            BarItem(
              filledIcon: Icons.bookmark_rounded,
              outlinedIcon: Icons.bookmark_border_rounded,
            ),
            BarItem(
                filledIcon: Icons.favorite_rounded,
                outlinedIcon: Icons.favorite_border_rounded),
            BarItem(
              filledIcon: Icons.email_rounded,
              outlinedIcon: Icons.email_outlined,
            ),
            BarItem(
              filledIcon: Icons.folder_rounded,
              outlinedIcon: Icons.folder_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
