import 'package:flutter/material.dart';

class SearchWidgets extends StatelessWidget {
  const SearchWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(color: Colors.grey.shade200),
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          color: Colors.white,
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: const Row(children: [
            Icon(
              Icons.search,
              size: 28,
            ),
            SizedBox(width: 10),
            Text(
              'Where can we explore today?',
              style: TextStyle(
                color: Color(0xCC3C2003),
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ])),
    );
  }
}
