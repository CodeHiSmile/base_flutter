import 'package:demo/domain/models/entities/icon_bottombar.dart';
import 'package:flutter/material.dart';

class AppConstant {
  static const connectTimeout = 6000;

  static final List<IconBottomBar> iconBottomBars = [
    IconBottomBar(active: Icons.home, inactive: Icons.home),
    IconBottomBar(active: Icons.add_task_rounded, inactive: Icons.add_task_rounded),
    IconBottomBar(active: Icons.notifications, inactive: Icons.notifications),
    IconBottomBar(active: Icons.account_circle_sharp, inactive: Icons.account_circle_sharp),
  ];
}
