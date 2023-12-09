//import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:test2/homepage.dart';
import 'package:test2/Signing.dart';
import 'package:test2/Creat.dart';
void main() {
  runApp( const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState()=> _MyAppState();}
bool x=false;
class _MyAppState extends State<MyApp>{

@override
  Widget build(BuildContext context) {
return MaterialApp(
  debugShowCheckedModeBanner: false,
 home: Homepage());




  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }


}