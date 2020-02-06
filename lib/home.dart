import 'package:flutter/material.dart';

import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:expandable/expandable.dart';

import 'package:flutter_todolist/appBars.dart';
import 'package:flutter_todolist/empty.dart';
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
                'Located Sensors:',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.TextHeader),
              ),
            ),

            // TODO Make wireless scan to find connections and create Expandable Notifier for each available sensor found
            ExpandableNotifier(child: Padding(
              padding: const EdgeInsets.all(10),
              child: Card(
                clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: <Widget>[
                    ScrollOnExpand(
                      scrollOnExpand: true,
                      scrollOnCollapse: false,
                      child: ExpandablePanel(
                        theme: const ExpandableThemeData(
                          headerAlignment: ExpandablePanelHeaderAlignment.center,
                          tapBodyToCollapse: true,
                        ),

                      header: Padding(
                          padding: EdgeInsets.all(10),
                          // child: Text(
                          //   "<Sensor ID>",
                          //   style: Theme.of(context).textTheme.body2,
                          // )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                '<Sensor ID>',
                              ),
                              Container(
                                width: 180,
                                child: Text(
                                  'Location or something',
                                )
                              ),
                            ],
                          )),
                      collapsed: Text(
                        "Temperature Preview or something",
                        softWrap: true,
                        maxLines: 2,
                      ),

                      expanded: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                        //   for (var _ in Iterable.generate(5))
                            Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Text(
                                  "Historical Temperature Data for past month",
                                  softWrap: true,
                                  overflow: TextOverflow.fade,
                                )),
                        ],
                      ),

                      builder: (_, collapsed, expanded) {
                        return Padding(
                          padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                          child: Expandable(
                            collapsed: collapsed,
                            expanded: expanded,
                            theme: const ExpandableThemeData(crossFadePoint: 0),
                          ),
                        );
                      },
              ),
            ),
          ],
        ),
      ),
    )),              
            //   decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //       stops: [0.015, 0.015],
            //       colors: [CustomColors.YellowIcon, Colors.white],
            //     ),
            //     borderRadius: BorderRadius.all(
            //       Radius.circular(5.0),
            //     ),
            //     boxShadow: [
            //       BoxShadow(
            //         color: CustomColors.GreyBorder,
            //         blurRadius: 10.0,
            //         spreadRadius: 5.0,
            //         offset: Offset(0.0, 0.0),
            //       ),
            //     ],
            //   ),
            // SizedBox(height: 15)
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: customFab(context),
    );
  }
}