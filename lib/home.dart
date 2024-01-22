import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myfirstpackage/dot_navigatio_bar_item.dart';
import 'package:myfirstpackage/first.dart';
import 'package:myfirstpackage/dot_navigation_bar.dart';
import 'package:myfirstpackage/seconds.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

final screen = [First(), second()];
int currentIndex = 0;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      bottomNavigationBar: DotNavigationBar(
        items: [
          DotNavigationBarItem(
              activeIcon: const Column(
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.green,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 3,
                  ),
                ],
              ),
              // icon1: Icon(Icons.abc),
              // height: 10,
              // circleAvatar: const CircleAvatar(
              //   radius: 20,
              //   backgroundColor: Colors.green,
              // ),
              icon2: const Icon(Icons.abc)),
        ],
        // screens: screen,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
      ),
    );
  }
}
