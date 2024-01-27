import 'package:flutter/material.dart';

class AppBarWidgets extends StatelessWidget {
  const AppBarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
              height: 52,
              padding: const EdgeInsets.all(4),
              margin: const EdgeInsets.only(right: 20),
              decoration: ShapeDecoration(
                color: const Color(0xFFFCEFE2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: Row(children: [
                Container(
                  width: 44,
                  margin: const EdgeInsets.only(right: 10),
                  height: 44,
                  padding: const EdgeInsets.only(top: 9, left: 4, right: 4),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/profile.jpg")),
                    color: const Color(0xFFEB963F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(111),
                    ),
                  ),
                ),
                const Text('Good morning, Mahdi',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
              ])),
        ),
        Container(
          width: 52,
          height: 52,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: const Color(0xFF3C2003),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(45),
            ),
          ),
          child: const Center(
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
