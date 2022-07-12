
import 'package:get/get.dart';
import 'package:getx_http2/model/data.dart';
import 'package:getx_http2/services/introduce_api.dart';

class GetIntroduce extends GetxController{
  var introduceList = <Introduce>[].obs;

@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getData();
  }
  void getData()async{
    var data = await Services.getFetchData();
    if(data != null){
      introduceList.value = data;
    }
  }
}