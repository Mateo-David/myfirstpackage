import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfirstpackage/dot_navigatio_bar_item.dart';
import 'package:myfirstpackage/dot_navigation_bar.dart';
import 'package:myfirstpackage/first.dart';
import 'package:myfirstpackage/home.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "second",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const First()),
              );
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
      ),
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              // Get.to(() => First());
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Home()),
              );
            },
            child: Center(
              child: Text("go to First"),
            ),
          )
        ],
      ),
    );
  }
}
