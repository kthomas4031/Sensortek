import 'package:flutter/material.dart';

import 'dart:async' show Future;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:expandable/expandable.dart';

import 'package:flutter_todolist/appBars.dart';
import 'package:flutter_todolist/empty.dart';
import 'package:flutter_todolist/util.dart';





class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  
  _HomeState createState() => _HomeState();
}

/*class Temperature{
       final int pid;
       final int sensorID;
       final String timestamp;
       final int f;
       final int c;

  Temperature({this.pid, this.sensorID, this.timestamp, this.f, this.c});
}*/




//Creates home state
class _HomeState extends State<Home> {



  /*void main() async{
    
    
    final Future<Database> database = openDatabase(
        join(await getDatabasesPath(), 'testDB.db'),
        
       
    );

    Future <List<Temperature>> temperatures() async{
      final Database db = await database;
      final List<Map<String, dynamic>> maps = await db.query('temperature_data');
      return List.generate(maps.length, (i){
        return Temperature(
          pid: maps[i]['PID'],
          sensorID: maps[i]['Sensor ID'],
          timestamp: maps[i]['Date and Time'],
          f: maps[i]['Farenheit'],
          c: maps[i]['Celsius'],
          );
      });

    }
    
    print(await temperatures());
  
  }*/

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
              margin: EdgeInsets.only(top: 15, left: 100, bottom: 15),
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
                                'Sensor ID:',
                              ),
                              Container(
                                width: 180,
                                child: Text(
                                  '002', style: TextStyle (
                                           fontWeight: FontWeight.bold,
                                            )
                                ) 
                              ),
                            ],
                          )),
                      collapsed: Text(
                        "Temperature: 33C°",
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
                                  "ID: 002\n" + "Time: 03/21/20-1:10:01\n"+ "Degrees: 91F°/33C°\n",
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
    )



    ),  


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
                                'Sensor ID: ',
                              ),
                              Container(
                                width: 180,
                                child: Text(
                                  '005', style: TextStyle (
                                           fontWeight: FontWeight.bold,
                                            )
                                )
                              ),
                            ],
                          )),
                      collapsed: Text(
                        "Temperature: 37C°",
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
                                  "ID: 005\n" + "Time: 03/21/20-1:10:00\n"+ "Degrees: 98F°/37C°\n",
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
    )


    
    ),


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
                                'Sensor ID: ',
                              ),
                              Container(
                                width: 180,
                                child: Text(
                                  '016', style: TextStyle (
                                           fontWeight: FontWeight.bold,
                                            )
                                )
                              ),
                            ],
                          )),
                      collapsed: Text(
                        "Temperature: 43C°",
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
                                  "ID: 016\n" + "Time: 03/21/20-1:09:98\n"+ "Degrees: 109F°/43C°\n",
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
    )


    
    ),

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