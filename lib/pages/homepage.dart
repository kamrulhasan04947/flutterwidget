
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterwidget/pages/activity1.dart';
import 'package:flutterwidget/pages/activity2.dart';

import 'customactivity.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> const CustomActivity(activityName: 'Activity1',)),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  )
                ),
                child: const Text(
                  'goto activity1',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ),
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const CustomActivity(activityName: 'Activity2')),
              );
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                )
            ),
            child: const Text(
              'goto activity2',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}

