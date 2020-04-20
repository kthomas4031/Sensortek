import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

import 'package:flutter_todolist/appBars.dart';
import 'package:flutter_todolist/home.dart';
import 'util.dart';

class Empty extends StatefulWidget {
  Empty({Key key}) : super(key: key);

  _EmptyState createState() => _EmptyState();
  
}
//Builds Structure for sensor summary bars, allows for data pull
class _EmptyState extends State<Empty> {
  var bottomNavigationBarIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: emptyAppbar(),
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: Container( 
          
          width: MediaQuery.of(context).size.width / 1.2,
        
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Database Sensor Data',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: CustomColors.TextHeader),
                    ),
                    SizedBox(height: 15),

                    // TODO: Insert Database Pull Request
                    // Iterate through database entries and dynamically display
                    ExpandableNotifier(child: Padding(
                      padding: const EdgeInsets.all(5),
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
                                  padding: EdgeInsets.all(5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text(
                                        'Sensor ID: ' ,
                                      ),
                                      Container(
                                        width: 175,
                                        child: Text(
                                          '000',style: TextStyle (
                                           fontWeight: FontWeight.bold,
                                            )
                                        )
                                      ),
                                    ],
                                  )),
                              collapsed: Text(
                                "Last Temperature Reading: 37C°",
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
                                          "ID: 000\n" + "Time: 03/19/20-3:23:56\n" + "Degrees: 99F°/37C°\n",
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
                      padding: const EdgeInsets.all(5),
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
                                  padding: EdgeInsets.all(5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text(
                                        'Sensor ID: ' ,
                                      ),
                                      Container(
                                        width: 175,
                                        child: Text(
                                          '001',style: TextStyle (
                                           fontWeight: FontWeight.bold,
                                            )
                                        )
                                      ),
                                    ],
                                  )),
                              collapsed: Text(
                                "Last Temperature Reading: 33C°",
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
                                          "ID: 001\n" + "Time: 03/19/20-3:22:00\n" + "Degrees: 110F°/33C°\n",
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





                  
                   //End of Entry
                 ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: customFab(context),
    );
  }
}


//Adds sensatek logo button and provides its navigation
FloatingActionButton customFab(context) {
  //Modal modal = Modal();

  return FloatingActionButton(
    onPressed: () {
      //modal.mainBottomSheet(context);
      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
    },
    elevation: 5,
    backgroundColor: Colors.transparent,
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Image.asset('assets/images/SensatekLogo.png'),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            CustomColors.GreenAccent,
            CustomColors.BlueLight,
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(60.0),
        ),
        boxShadow: [
          BoxShadow(
            color: CustomColors.PurpleShadow,
            blurRadius: 10.0,
            spreadRadius: 5.0,
            offset: Offset(0.0, 0.0),
          ),
        ],
      ),
    ),
  );
}


