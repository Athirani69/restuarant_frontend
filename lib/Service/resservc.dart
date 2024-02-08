
import 'package:restuarant/Models/resmodel.dart';
import 'package:http/http.dart'as http;
class Api{
  Future<List<Restaurant>> getdata() async{
    var client=http.Client();
    var api=Uri.parse("http://192.168.10.181:3001/api/restuarant/viewall/");
    var rsp=await client.get(api);
    if(rsp.statusCode==200)
    {
      return restaurantFromJson(rsp.body);
    }
    else{
      return [];
    }
  }
}
}