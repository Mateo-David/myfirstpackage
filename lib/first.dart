import 'package:flutter/material.dart';
import 'package:get/get.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
      ),
      backgroundColor: Colors.red,
      body: Center(
        child: Text("first"),
      ),
    );
  }
}
