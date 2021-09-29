import 'package:get/get.dart';

class CounterController extends GetxController {

  Rx<int> counter = 0.obs;
  int counterX = 0;

  void plus()=> counter.value++;

  void increment(){
    counterX++;
    update(['counterX']);
  }

}
