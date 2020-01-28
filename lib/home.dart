import 'package:flutter/material.dart';

import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:flutter_todolist/appBars.dart';
import 'package:flutter_todolist/fab.dart';
import 'package:flutter_todolist/util.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final bottomNavigationBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: fullAppbar(context),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 15, left: 20, bottom: 15),
              child: Text(
                'Today',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: CustomColors.TextSubHeader),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: EdgeInsets.fromLTRB(5, 13, 5, 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset('assets/images/checked.png'),
                  Text(
                    '07.00 AM',
                    style: TextStyle(color: CustomColors.TextGrey),
                  ),
                  Container(
                    width: 180,
                    child: Text(
                      'Go jogging with Christin',
                      style: TextStyle(
                          color: CustomColors.TextGrey,
                          //fontWeight: FontWeight.w600,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ),
                  Image.asset('assets/images/bell-small.png'),
                ],
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.015, 0.015],
                  colors: [CustomColors.YellowIcon, Colors.white],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.GreyBorder,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: customFab(context),
    );
  }
}
