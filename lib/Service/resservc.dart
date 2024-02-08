

import 'dart:convert';

import 'package:restuarant/Models/resmodel.dart';
import 'package:http/http.dart'as http;
class Api{
  Future<dynamic> sendData(String oid,String cnm,String cfon,String fddetails,String prc)
  async{
    var client=http.Client();
    var api=Uri.parse("http://10.0.21.99:3001/api/restuarant/add/");
    var resp=await client.post(api,
        headers: <String,String>{
          "Content-Type":"application/json; charset=UTF-8"
        },
        body: jsonEncode(<String,String>{
          "orderid":oid,
          "custname":cnm,
          "custfon":cfon,
          "fddtails":fddetails,
          "Price":prc
        }
        )
    );
    if(resp.statusCode==200)
    {
      return json.encode(resp.body);
    }
    else
    {
      throw Exception("failed to send data");
    }

  }





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
