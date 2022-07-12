import 'package:getx_http2/model/data.dart';
import 'package:http/http.dart' as http;

class Services{
  static var client = http.Client();
  static Future<List<Introduce>?> getFetchData() async{
    var response = await client.get(Uri.parse("http://jsonplaceholder.typicode.com/posts"));
    if(response.statusCode == 200){
      var body = response.body;
      return introduceFromJson(body);
    }else{
      return null;
    }
  }
}