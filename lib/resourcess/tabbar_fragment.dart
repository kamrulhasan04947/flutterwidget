import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TabBarFragmentView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab Bar Fragment'),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home',),
              Tab(icon: Icon(Icons.search), text: 'Search',),
              Tab(icon: Icon(Icons.settings), text: 'Settings',),
              Tab(icon: Icon(Icons.email), text: 'Email',),
              Tab(icon: Icon(Icons.contact_mail), text: 'Mail',),
              Tab(icon: Icon(Icons.person), text: 'Person',),
              Tab(icon: Icon(Icons.access_alarm), text: 'Alerm',),
              Tab(icon: Icon(Icons.account_balance), text: 'Balance',),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Text('1'),
            Text('2'),
            Text('3'),
            Text('4'),
            Text('5'),
            Text('6'),
            Text('7'),
            Text('8')
          ],
        ),
      ),
    );
  }

}