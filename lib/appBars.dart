import 'package:flutter/material.dart';

import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'util.dart';

//Creates app bar header  for the second page
Widget fullAppbar(BuildContext context) {
  return PreferredSize(
    preferredSize: Size.fromHeight(80.0),
    child: GradientAppBar(
      flexibleSpace: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CustomPaint(
            painter: CircleOne(),
          ),
          // CustomPaint(
          //   painter: CircleTwo(),
          // ),
        ],
      ),
      title: Container(
        margin: EdgeInsets.only(top: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Sensatek Sensor Monitoring',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,
              shadows: [
                    Shadow( // bottomLeft
                      offset: Offset(-1.25, -1.25),
                      color: Colors.black
                    ),
                    Shadow( // bottomRight
                      offset: Offset(1.25, -1.25),
                      color: Colors.black
                    ),
                    Shadow( // topRight
                      offset: Offset(1.25, 1.25),
                      color: Colors.black
                    ),
                    Shadow( // topLeft
                      offset: Offset(-1.25, 1.25),
                      color: Colors.black
                    ),
                  ]
              ),
            ),
          ],
        ),
      ),
     
      elevation: 0,
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [CustomColors.SensatekGreen, CustomColors.SensatekAqua],
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(1),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
          decoration: BoxDecoration(
            color: CustomColors.HeaderGreyLight,
            borderRadius: BorderRadius.circular(5.0),
          ),
          
        ),
      ),
    ),
  );
}
//Creates app bar header for the first page
Widget emptyAppbar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(80.0),
    child: GradientAppBar(
      flexibleSpace: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CustomPaint(
            painter: CircleOne(),
          ),
          // CustomPaint(
          //   painter: CircleTwo(),
          // ),
        ],
      ),
      title: Container(
        margin: EdgeInsets.only(top: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Sensatek Sensor Monitoring',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,
              shadows: [
                    Shadow( // bottomLeft
                      offset: Offset(-1.25, -1.25),
                      color: Colors.black
                    ),
                    Shadow( // bottomRight
                      offset: Offset(1.25, -1.25),
                      color: Colors.black
                    ),
                    Shadow( // topRight
                      offset: Offset(1.25, 1.25),
                      color: Colors.black
                    ),
                    Shadow( // topLeft
                      offset: Offset(-1.25, 1.25),
                      color: Colors.black
                    ),
                  ]
              ),
            ),
          ],
        ),
      ),
      // actions: <Widget>[
      //   Container(
      //     margin: EdgeInsets.fromLTRB(0, 17, 17, 0),
      //     child: Image.asset('assets/images/SensatekLogo.png'),
      //   ),
      // ],
      elevation: 0,
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [CustomColors.SensatekGreen, CustomColors.SensatekAqua],
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(1),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
          decoration: BoxDecoration(
            color: CustomColors.HeaderGreyLight,
            borderRadius: BorderRadius.circular(5.0),
          ),
         
        ),
      ),
    ),
  );
}


//adds circle flair to the header (pwetty)
class CircleOne extends CustomPainter {
  Paint _paint;

  CircleOne() {
    _paint = Paint()
      ..color = CustomColors.HeaderCircle
      ..strokeWidth = 10.0
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(28.0, 0.0), 99.0, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class CircleTwo extends CustomPainter {
  Paint _paint;

  CircleTwo() {
    _paint = Paint()
      ..color = CustomColors.HeaderCircle
      ..strokeWidth = 10.0
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(-30, 20), 50.0, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
