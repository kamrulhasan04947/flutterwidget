import 'package:flutter/material.dart';

class CustomFregment extends StatelessWidget{
  const CustomFregment({super.key, required this.nameOfFregment});
  final String nameOfFregment;
  @override
  Widget build(BuildContext context) {
    return  Center(
      child:  Text(nameOfFregment),
    );
  }
}