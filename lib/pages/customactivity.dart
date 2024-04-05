import 'package:flutter/material.dart';
import 'package:flutterwidget/pages/activity1.dart';
import 'package:flutterwidget/pages/homepage.dart';


class CustomActivity extends StatelessWidget {
  final String activityName;
  final String goToActivity;
  const  CustomActivity ({super.key , required this.activityName, required this.goToActivity});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(activityName),
        backgroundColor: Colors.black54,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  )
              ),
              child: const Text(
                'goto Home',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const CustomActivity(activityName: 'Activity2', goToActivity: 'Activity1',)));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                )
            ),
            child: Text(
              'goto $goToActivity',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}