import 'package:flutter/material.dart';
import 'package:myfirstpackage/dot_navigatio_bar_item.dart';
import 'package:myfirstpackage/dot_navigation_bar.dart';
import 'package:myfirstpackage/first.dart';
import 'package:myfirstpackage/seconds.dart';

class Testing extends StatefulWidget {
  const Testing({super.key});

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  int currentIndex = 0;
  final screen = [
    First(),
    second(),
    First(),
    second(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screen[currentIndex],
        bottomNavigationBar: DotBottomNavigationBar(
            onTap: (index) {
              setState(
                () {
                  currentIndex = index;
                },
              );
            },
            items: [
              DotBottomNavigationBarItem(icon: const Icon(Icons.home)),
              DotBottomNavigationBarItem(icon: const Icon(Icons.settings)),
              DotBottomNavigationBarItem(icon: const Icon(Icons.home)),
              DotBottomNavigationBarItem(icon: const Icon(Icons.home)),
              // DotBottomNavigationBarItem(icon: const Icon(Icons.home)),
              // DotBottomNavigationBarItem(icon: const Icon(Icons.home)),
              // DotBottomNavigationBarItem(icon: const Icon(Icons.home)),
              // DotBottomNavigationBarItem(icon: const Icon(Icons.home)),
              // DotBottomNavigationBarItem(icon: const Icon(Icons.home)),
              // DotBottomNavigationBarItem(icon: const Icon(Icons.home)),
              // DotBottomNavigationBarItem(icon: const Icon(Icons.home)),
              // DotBottomNavigationBarItem(icon: const Icon(Icons.home)),
              // DotBottomNavigationBarItem(icon: const Icon(Icons.home)),
              // DotBottomNavigationBarItem(icon: const Icon(Icons.home))
            ],
            currentIndex: currentIndex));
  }
}
