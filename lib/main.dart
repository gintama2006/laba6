import 'package:flutter/material.dart';
import  'dart:math';
import 'package:numberpicker/numberpicker.dart';

class MyBody extends StatefulWidget {
  const MyBody({super.key});

  @override
  createState() => MyBodyState();
}

class MyBodyState extends State<MyBody> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){


      const Divider();


      double result = 2;

      for (int i = 1; i< index; i++){
        result = result * 2;
      }
      if (index == 0){
        result = 2;
      }

      return ListTile(title: Text('2 в степени $index: $result'));
    });
  }
}



void main() =>  runApp(
    const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: Center(child: MyBody(),))
    )
);