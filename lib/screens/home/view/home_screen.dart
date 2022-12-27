import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx1/screens/home/controller/controller_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("GETx"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder(
              init: HomeController(),
                builder: (controller) {
                return Text("${homeController.i}",style: TextStyle(fontSize: 30),);
                }),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  homeController.Plusplus();
                }, child: Text("+")),
                SizedBox(width: 10,),
                ElevatedButton(onPressed: (){
                  homeController.Twox();
                }, child: Text("2x")),
                SizedBox(width: 10,),
                ElevatedButton(onPressed: (){
                  homeController.Fourx();
                }, child: Text("4x")),
                SizedBox(width: 10,),
                ElevatedButton(onPressed: (){
                  homeController.Sixx();
                }, child: Text("6x")),
                SizedBox(width: 10,),
                ElevatedButton(onPressed: (){
                  homeController.Minus();
                }, child: Text("-")),
              ],
            ),
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red),onPressed: (){
              homeController.Clear();
            }, child: Text("Clear")),
          ],
        ),
      ),
    ));
  }
}
