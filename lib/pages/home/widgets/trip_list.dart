import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TripListWidgets extends StatelessWidget {
  const TripListWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Trips',
                style: TextStyle(
                  color: Color(0xFF3C2003),
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                'See all',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF3C2003),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
              ),
            ]),
      ),
      const SizedBox(height: 16),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        width: MediaQuery.sizeOf(context).width,
        height: 360,
        child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 16),
                child: Row(children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0x26EB963F),
                        borderRadius: BorderRadius.circular(70)),
                    width: 73.75,
                    height: 73.75,
                    child: Center(child: SvgPicture.asset('assets/car.svg')),
                  ),
                  const SizedBox(width: 15),
                  const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Oriental suite',
                          style: TextStyle(
                            color: Color(0xFF3C2003),
                            fontSize: 16,
                            fontFamily: 'Aeonik',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text('Arrived 1hr in a benz xzu001',
                            style: TextStyle(
                              color: Color(0xFF3C2003),
                              fontSize: 12,
                              fontFamily: 'Aeonik',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ))
                      ])
                ]),
              );
            }),
      )
    ]);
  }
}
