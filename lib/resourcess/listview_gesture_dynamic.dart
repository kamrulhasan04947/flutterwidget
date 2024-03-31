
import 'package:flutter/material.dart';

class ListViewDynamicGesture extends StatelessWidget{
  ListViewDynamicGesture({super.key});
  var items = [
    {'img': 'https://rabbil.com/files/mernS.png', 'title': 'Item Mongo'},
    {'img': 'https://rabbil.com/files/mernS.png', 'title': 'Item Express'},
    {'img': 'https://rabbil.com/files/mernS.png', 'title': 'Item React'},
    {'img': 'https://rabbil.com/files/mernS.png', 'title': 'Item Node.js'},
    {'img': 'https://rabbil.com/files/mernS.png', 'title': 'Item Mongo'},
    {'img': 'https://rabbil.com/files/mernS.png', 'title': 'Item Express'},
    {'img': 'https://rabbil.com/files/mernS.png', 'title': 'Item React'},
    {'img': 'https://rabbil.com/files/mernS.png', 'title': 'Item Node.js'},
  ];
  customSnakBar(context, msg){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg)),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: (){
                  customSnakBar(context, items[index]['title']);
            },
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 300,
              child: Image.network(items[index]['img']!, fit: BoxFit.fill,),
            ),
          );
        },
      ),
    );
  }

}