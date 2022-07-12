

import 'package:get/get.dart';
import 'package:getx_http2/model/data.dart';

class IntroduceCount extends GetxController{
  var itemCountList = <Introduce>[].obs;
  int get count =>  itemCountList.length;

  void getCount(Introduce introduce){
    itemCountList.add(introduce);
  }
}