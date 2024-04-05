import 'package:flutter/material.dart';

class ShowCircularProgressBar extends StatelessWidget{
  const ShowCircularProgressBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.black26),
            color: Colors.white,
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(
                color: Colors.red,
                strokeWidth: 10,
                backgroundColor: Colors.greenAccent,
              ),

              SizedBox(
                height: 10,
              ),

              Text(
                'Loading',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.lightBlue,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}