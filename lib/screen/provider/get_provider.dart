import 'package:flutter/cupertino.dart';
import 'package:random_user_project/screen/model/get_model.dart';
import 'package:random_user_project/ulitis/api_helper.dart';

class Home_provider extends ChangeNotifier{
  Randomuser? ru;
  Future<void> userapicall() async {
    postapi pa=postapi();
    ru = await pa.post();
    notifyListeners();
  }
}