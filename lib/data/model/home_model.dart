import 'package:flutter/material.dart';

class HomeModel {
  final String title;
  final Color color;
  final String icon;

  HomeModel({required this.title, required this.color, required this.icon});
}

List<HomeModel> homeListItems = [
  HomeModel(
      title: "Restaurants",
      color: const Color(0x26FF4F00),
      icon: 'assets/res.svg'),
  HomeModel(
      title: "Rides", color: const Color(0x26EB963F), icon: 'assets/car.svg'),
  HomeModel(
      title: "Errands",
      color: const Color(0x2632BA77),
      icon: 'assets/bicycle.svg'),
  HomeModel(
      title: "Package",
      color: const Color(0x265237F6),
      icon: 'assets/package.svg'),
];
