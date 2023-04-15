import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_user_project/screen/model/get_model.dart';
import 'package:random_user_project/screen/provider/get_provider.dart';
import 'package:random_user_project/ulitis/api_helper.dart';

class User_screen extends StatefulWidget {
  const User_screen({Key? key}) : super(key: key);
  @override
  State<User_screen> createState() => _User_screenState();
}
class _User_screenState extends State<User_screen> {
  @override
  Home_provider?home_providert,home_providerf;
  void initState() {
    super.initState();
    Provider.of<Home_provider>(context, listen: false).userapicall();
  }
  Widget build(BuildContext context) {
    home_providert=Provider.of<Home_provider>(context,listen: true);
    home_providerf=Provider.of<Home_provider>(context,listen: false);
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        title: Text("User Details"),
        centerTitle: true,
        backgroundColor: Colors.white10,
        actions: [
          IconButton(onPressed: () {
          home_providerf!.userapicall();
          }, icon: Icon(Icons.change_circle,color: Colors.white,size: 30,))
        ],
      ),
        body: ListView.builder(
          itemCount: home_providert!.ru!.results!.length,
          itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Image.network("${home_providerf!.ru!.results![0].picture!.medium}")),
            title:Text("${home_providerf!.ru!.results![0].id!.name}"),
            subtitle: Text("${home_providerf!.ru!.results![0].gender}"),
            trailing: Text("${home_providerf!.ru!.results![0].phone}"),
          );
        },
        ),
    ),
    );
  }
}
