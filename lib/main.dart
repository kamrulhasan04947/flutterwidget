import 'package:flutter/material.dart';
import 'package:flutterwidget/resourcess/center_column_text_Image.dart';
import 'package:flutterwidget/resourcess/tabbar_fragment.dart';
// import 'package:flutterwidget/resourcess/GridView_Gesture_dynamic.dart';
// import 'package:flutterwidget/resourcess/tabbar_fragment.dart';
// import 'package:flutterwidget/resourcess/listview_gesture_dynamic.dart';
// import 'package:flutterwidget/resourcess/simple_textfeild_form.dart';

void main(){
  runApp(const MainApp());
}


class MainApp extends StatelessWidget{
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'FlutterWidget',
      debugShowCheckedModeBanner: false,
      home:  TabBarFragmentView(),
    );
  }
}