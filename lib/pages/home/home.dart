import 'package:flutter/material.dart';
import 'package:super_applicaiton/pages/home/widgets/appbar_widgets.dart';

import 'widgets/balece_of_money.dart';
import 'widgets/category_list.dart';
import 'widgets/search.dart';
import 'widgets/trip_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            automaticallyImplyLeading: false,
            leadingWidth: 0,
            centerTitle: false,
            title: const AppBarWidgets()),
        body: SingleChildScrollView(
          child: Column(children: [
            const BaleceOfMoney(),
            const SearchWidgets(),
            const CategoryListWidgets(),
            rideUsImage(context),
            const TripListWidgets()
          ]),
        ));
  }

  Widget rideUsImage(context) {
    return Container(
      height: 135,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(color: Colors.grey.shade200),
      margin: const EdgeInsets.only(top: 30, bottom: 17),
      child: Center(
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: 122,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/ride_us.png"), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
