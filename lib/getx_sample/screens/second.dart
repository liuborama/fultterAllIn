import 'package:flutter/material.dart';
import 'package:flutterAllinSamples/getx_sample/controllers/countController.dart';
import 'package:get/get.dart';

class Second extends StatelessWidget {
  final CountController ctrl = Get.find();
  @override
  Widget build(context) {
    return Scaffold(body: Center(child: Text("${ctrl.count}")));
  }
}
