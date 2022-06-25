import 'package:get/get.dart';

class GetXclass extends GetxController {
  List<int> listOfIntegers = <int>[].obs;

  void addFiveInList() {
    listOfIntegers.add(5);
  }

  void ifThereFiveItWillBeThree() {
    for (int i = 0; i < listOfIntegers.length; i++) {
      if (listOfIntegers[i] == 5) {
        listOfIntegers[i] = 3;
      }
    }
  }
}
