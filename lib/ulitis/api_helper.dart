import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:random_user_project/screen/model/get_model.dart';

class postapi{
 Future<Randomuser> post() async {
   String link ="https://randomuser.me/api/";
   Uri uri=Uri.parse(link);
   var response= await http.get(uri);
   var json = jsonDecode(response.body);

   Randomuser ru = Randomuser.fromJson(json);
   return ru;

}
}