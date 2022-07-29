import 'package:back/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/will_pop_scope.dart';
//import 'package:double_back_to_close_app/double_back_to_close_app.dart';
//import 'package:double_back_to_close/double_back_to_close.dart';

void main() {
  runApp( MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  
  DateTime pre_backpress = DateTime.now();
  //const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)     {
    return WillPopScope(onWillPop: () async{
      final timegap = DateTime.now().difference(pre_backpress);

      print('$timegap');
      return false;

    },
    child : MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    ),
    );
  
  }
    
}

// class HomePage extends StatelessWidget{
//   DateTime pre_backpress = DateTime.now();
//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(onWillPop: () async{
//       final timegap = DateTime.now().difference(pre_backpress);
//       final cantExit = timegap >= Duration(seconds: 2);
//       pre_backpress = DateTime.now();

//       if(cantExit){
//         final snack = SnackBar(content: Text('press again'), duration: Duration(seconds: 2),);
//         ScaffoldMessenger.of(context).showSnackBar(snack);
//         return false;
//       }else{
//         return true;
//       }
//     },
//     child:Home(

//     )
//     );
//   }
// }
