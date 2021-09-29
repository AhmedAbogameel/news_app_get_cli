import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:news_app_get_cli/app/modules/home/views/home_view.dart';
import 'package:news_app_get_cli/app/routes/app_pages.dart';

import '../controllers/counter_controller.dart';

class CounterView extends GetView<CounterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CounterView'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // GetBuilder<CounterController>(
          //     id: 'counterX',
          //     builder: (controller) =>
          //         Text('Button pressed ${controller.counterX} Times')),
          // ElevatedButton(
          //     onPressed: () => CounterController.get.increment(),
          //     child: Icon(Icons.add)),
          Obx(()=> Text('Button pressed ${controller.counter} Times')),
          ElevatedButton(
              onPressed: () => controller.plus(),
              child: Icon(Icons.add)),
          ElevatedButton(
              onPressed: () => Get.toNamed(Routes.HOME),
              child: Icon(Icons.arrow_forward_rounded)),
        ],
      ),
    );
  }
}
