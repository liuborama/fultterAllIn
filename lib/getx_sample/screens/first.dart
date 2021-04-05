import 'package:flutter/material.dart';
import 'package:flutterAllinSamples/getx_sample/controllers/countController.dart';
import 'package:flutterAllinSamples/getx_sample/screens/second.dart';
import 'package:get/get.dart';

class First extends StatelessWidget {
  const First({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var count = 0.obs;
    final countController = Get.put(CountController());

    return Scaffold(
        appBar: AppBar(title: Text("GetX | State Management")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<CountController>(builder: (_) {
                return Text("Current Count Value: ${countController.count}");
              }),
              SizedBox(height: 40),
              Obx(() => Text("$count")),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  count++;
                },
                child: Text("Update Name & Started Count"),
              ),
              SizedBox(height: 100),
              ElevatedButton(
                onPressed: () {
                  Get.to(Second());
                },
                child: Text("Next Screen"),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            countController.increment();
          },
        ));
  }
}
