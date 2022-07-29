import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  //const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        child: new Scaffold(
            appBar: new AppBar(
              title: new Text('data', style: TextStyle(color: Colors.black),),
            ),
            body: Center(
              child: Text('contoh tulisan', style: TextStyle(color: Colors.black,),)
            ),
          ),
    );
  }
}