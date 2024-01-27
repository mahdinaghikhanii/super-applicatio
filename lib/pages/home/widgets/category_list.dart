import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../data/model/home_model.dart';

class CategoryListWidgets extends StatelessWidget {
  const CategoryListWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, top: 24),
      height: 100,
      width: MediaQuery.sizeOf(context).width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: homeListItems.length,
          itemBuilder: (context, index) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 16),
                    width: 73.75,
                    height: 73.75,
                    padding: const EdgeInsets.only(
                      top: 23,
                      left: 23.37,
                      right: 22.38,
                      bottom: 22.75,
                    ),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: homeListItems[index].color,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(82),
                      ),
                    ),
                    child: SvgPicture.asset(homeListItems[index].icon),
                  ),
                  const SizedBox(height: 7),
                  const Padding(
                    padding: EdgeInsets.only(right: 14),
                    child: Text(
                      'Rides',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF3C2003),
                        fontSize: 12,
                        fontFamily: 'Aeonik',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ]);
          }),
    );
  }
}
