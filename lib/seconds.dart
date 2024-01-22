import 'package:flutter/material.dart';
import 'package:get/get.dart';

class second extends StatelessWidget {
  const second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,)),
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: Text("second"),
      ),
    );
  }
}
