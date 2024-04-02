import 'package:flutter/material.dart';
import 'package:flutterwidget/fregment/fregment.dart';


class TabBarFragmentView extends StatelessWidget{
  const TabBarFragmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Bar Fragment'),
          bottom: const TabBar(
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
        body: const TabBarView(
          children: [
            CustomFregment(nameOfFregment: 'Home fregment'),
            CustomFregment(nameOfFregment: 'Search fregment'),
            CustomFregment(nameOfFregment: 'Settings fregment'),
            CustomFregment(nameOfFregment: 'Email fregment'),
            CustomFregment(nameOfFregment: 'Mail fregment'),
            CustomFregment(nameOfFregment: 'Person fregment'),
            CustomFregment(nameOfFregment: 'Alarm fregment'),
            CustomFregment(nameOfFregment: 'Balance fregment'),
          ],
        ),
      ),
    );
  }

}