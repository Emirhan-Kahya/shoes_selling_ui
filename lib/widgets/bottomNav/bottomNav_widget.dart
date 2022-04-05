import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shoes_selling_ui/color.dart';
import 'package:shoes_selling_ui/widgets/bottomNav/bottomNavItems_widget.dart';

class buildBottomNav extends StatefulWidget {
  const buildBottomNav({Key? key}) : super(key: key);

  @override
  State<buildBottomNav> createState() => _buildBottomNavState();
}

class _buildBottomNavState extends State<buildBottomNav> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.theme4,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
                color: AppColor.theme5.withOpacity(0.3),
                blurRadius: 20,
                spreadRadius: 1,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 30, top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildContainerBottomNav(
                icon: Icons.home,
                isSelected: _selectedIndex == 0,
                press: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
              ),
              buildContainerBottomNav(
                icon: Icons.textsms_outlined,
                isSelected: _selectedIndex == 1,
                press: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
              ),
              buildContainerBottomNav(
                icon: Icons.shopping_cart,
                isSelected: _selectedIndex == 2,
                press: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                },
              ),
              buildContainerBottomNav(
                icon: Icons.notifications_none,
                isSelected: _selectedIndex == 3,
                press: () {
                  setState(() {
                    _selectedIndex = 3;
                  });
                },
              ),
              buildContainerBottomNav(
                icon: Icons.person,
                isSelected: _selectedIndex == 4,
                press: () {
                  setState(() {
                    _selectedIndex = 4;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
