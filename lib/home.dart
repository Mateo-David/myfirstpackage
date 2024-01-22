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

final screen = [
  First(),
  second(),
  First(),
  second(),
];
int currentIndex = 0;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.amber,
        body: screen[currentIndex],
        bottomNavigationBar: DotNavigationBar(
            selectedFontSize: 0,
            unselectedFontSize: 0,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: [
              // DotNavigationBarItem(
              //   activeIcon: const Column(
              //     children: [
              //       Icon(
              //         Icons.home,
              //         color: Colors.green,
              //       ),
              //       SizedBox(
              //         height: 10,
              //       ),
              //       CircleAvatar(
              //         backgroundColor: Colors.green,
              //         radius: 3,
              //       ),
              //     ],
              //   ),
              //   icon: Icon(
              //     Icons.home_outlined,
              //   ),
              // ),
              // DotNavigationBarItem(
              //   activeIcon: const Column(
              //     children: [
              //       Icon(
              //         Icons.settings,
              //         color: Colors.green,
              //       ),
              //       SizedBox(
              //         height: 10,
              //       ),
              //       CircleAvatar(
              //         backgroundColor: Colors.green,
              //         radius: 3,
              //       ),
              //     ],
              //   ),
              //   icon: Icon(
              //     Icons.settings_outlined,
              //   ),
              // ),

              // DotNavigationBarItem(
              //   activeIcon: const Column(
              //     children: [
              //       Icon(
              //         Icons.home,
              //         color: Colors.green,
              //       ),
              //       SizedBox(
              //         height: 10,
              //       ),
              //       CircleAvatar(
              //         backgroundColor: Colors.green,
              //         radius: 3,
              //       ),
              //     ],
              //   ),
              //   icon: Icon(
              //     Icons.home_outlined,
              //   ),
              // ),
              // DotNavigationBarItem(
              //   activeIcon: const Column(
              //     children: [
              //       Icon(
              //         Icons.settings,
              //         color: Colors.green,
              //       ),
              //       SizedBox(
              //         height: 10,
              //       ),
              //       CircleAvatar(
              //         backgroundColor: Colors.green,
              //         radius: 3,
              //       ),
              //     ],
              //   ),
              //   icon: Icon(
              //     Icons.settings_outlined,
              //   ),
              // ),

              // DotNavigationBarItem(
              //   icon: Icon(
              //     Icons.home,
              //   ),
              // ),
              DotNavigationBarItem(
                  activeIcon: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.green,
                      ),
                      CircleAvatar(
                        radius: 3,
                        backgroundColor: Colors.green,
                      )
                    ],
                  ),
                  icon: const Icon(Icons.home_outlined)),
              DotNavigationBarItem(icon: Icon(Icons.settings)),
              DotNavigationBarItem(
                  activeIcon: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.green,
                      ),
                      CircleAvatar(
                        radius: 3,
                        backgroundColor: Colors.green,
                      )
                    ],
                  ),
                  icon: const Icon(Icons.home_outlined)),
              DotNavigationBarItem(icon: Icon(Icons.settings)),
            ],
            currentIndex: currentIndex)

        // DotNavigationBar(
        //   items: [
        // DotNavigationBarItem(
        //     activeIcon: const Column(
        //       children: [
        //         Icon(
        //           Icons.home,
        //           color: Colors.green,
        //         ),
        //         SizedBox(
        //           height: 10,
        //         ),
        //         CircleAvatar(
        //           backgroundColor: Colors.green,
        //           radius: 3,
        //         ),
        //       ],
        //     ),
        //     icon2: const Icon(Icons.abc)),
        //     DotNavigationBarItem(
        //         activeIcon: const Column(
        //           children: [
        //             Icon(
        //               Icons.settings,
        //               color: Colors.green,
        //             ),
        //             SizedBox(
        //               height: 10,
        //             ),
        //             CircleAvatar(
        //               backgroundColor: Colors.green,
        //               radius: 3,
        //             ),
        //           ],
        //         ),
        //         icon2: const Icon(Icons.settings)),
        //   ],
        //   // screens: screen,
        //   onTap: (index) {
        //     setState(() {
        //       currentIndex = index;
        //     });
        //   },
        //   currentIndex: currentIndex,
        // ),

        );
  }
}
