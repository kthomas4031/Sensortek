import 'package:flutter/material.dart';

import 'package:flutter_todolist/home.dart';
import 'package:flutter_todolist/bottomSheet.dart';
import 'util.dart';



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
