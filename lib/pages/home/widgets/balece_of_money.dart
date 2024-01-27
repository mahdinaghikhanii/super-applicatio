import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BaleceOfMoney extends StatelessWidget {
  const BaleceOfMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.sizeOf(context).width,
        height: 72,
        padding:
            const EdgeInsets.only(left: 24, right: 16, top: 16, bottom: 16),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: ShapeDecoration(
            color: const Color(0xFF3C2003),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40))),
        child: Row(children: [
          const Text('₦20,000.00',
              style: TextStyle(
                color: Color(0xFFFCEFE2),
                fontSize: 22.79,
                fontFamily: 'Aeonik',
                fontWeight: FontWeight.w700,
                height: 0,
              )),
          const Spacer(),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                builder: (BuildContext context) {
                  return choicePaymentMethodBottomSheet(context);
                },
              );
            },
            child: Container(
              width: 40,
              height: 40,
              margin: const EdgeInsets.only(right: 16),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                  color: const Color(0xFFEB963F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(38),
                  )),
              child: const Icon(CupertinoIcons.add, color: Colors.white),
            ),
          ),
          Container(
            width: 40,
            height: 40,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: const Color(0xFFEB963F),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(38),
              ),
            ),
            child:
                Center(child: SvgPicture.asset("assets/send.svg", width: 28)),
          )
        ]));
  }
}

Widget choicePaymentMethodBottomSheet(context) {
  return Container(
    height: 383,
    color: Colors.transparent,
    child: Container(
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0))),
        child: Column(children: [
          Container(
            margin: const EdgeInsets.only(top: 8, bottom: 22),
            width: 46,
            height: 4,
            decoration: ShapeDecoration(
              color: const Color(0xFF7F7F7F),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),
          const Text(
            'Choose payment method',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF3C2003),
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'Set payment method to have a stress-free ride\nevery time you use Rida',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF3C2003),
              fontSize: 12,
              fontWeight: FontWeight.w500,
              letterSpacing: -0.10,
            ),
          ),
          const SizedBox(height: 24),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            width: MediaQuery.sizeOf(context).width,
            height: 56,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: ShapeDecoration(
              color: const Color(0xFFE9E9E9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            child: const Row(children: [
              Icon(Icons.apple),
              SizedBox(width: 5),
              Text(
                'Apple Pay',
                style: TextStyle(
                  color: Color(0xFF3C2003),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              )
            ]),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            width: MediaQuery.sizeOf(context).width,
            height: 56,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: ShapeDecoration(
              color: const Color(0xFFE9E9E9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            child: const Row(children: [
              Icon(Icons.money),
              SizedBox(width: 5),
              Text(
                'Cash',
                style: TextStyle(
                  color: Color(0xFF3C2003),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              )
            ]),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            width: MediaQuery.sizeOf(context).width,
            height: 56,
            decoration: ShapeDecoration(
              color: const Color(0x26EB963F),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            child: Row(children: [
              Container(
                width: 40,
                height: 40,
                margin: const EdgeInsets.only(right: 10, left: 10),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                    color: const Color(0xFFEB963F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(38),
                    )),
                child: const Icon(CupertinoIcons.add, color: Colors.white),
              ),
              const Text(
                'Add payment method',
                style: TextStyle(
                  color: Color(0xFF3C2003),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  height: 0,
                ),
              )
            ]),
          )
        ])),
  );
}
