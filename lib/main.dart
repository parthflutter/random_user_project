import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_user_project/screen/provider/get_provider.dart';
import 'package:random_user_project/screen/view/get_screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => Home_provider(),),
  ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => User_screen(),
      },
    ),
  ),
  );
}