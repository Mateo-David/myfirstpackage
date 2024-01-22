import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstpackage/body.dart';
import 'package:myfirstpackage/dot_navigatio_bar_item.dart';

class DotNavigationBar extends StatelessWidget {
  DotNavigationBar({
    super.key,
    required this.onTap,
    required this.items,
    required this.currentIndex,
    this.selectedFontSize = 0,
    this.unselectedFontSize = 0,
    this.backgroundColor = Colors.white,
    this.selectedItemColor = Colors.black,
  });

  int currentIndex;
  final List<DotNavigationBarItem> items;
  double selectedFontSize;
  double unselectedFontSize;
  Color backgroundColor;
  Color selectedItemColor;
  Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.transparent,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Body(
              items: items,
              currentIndex: currentIndex,
              selectedItemColor: selectedItemColor,
              onTap: onTap!,
            ),
          ),
        ],
      ),
    );

    // Column(children: [
    //   Body(
    //     items: items,
    //     currentIndex: currentIndex,
    //     selectedItemColor: selectedItemColor,
    //     onTap: onTap!,
    //   ),
    // ]);
  }
}
