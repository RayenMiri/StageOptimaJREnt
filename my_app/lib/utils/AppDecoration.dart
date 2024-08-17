import 'package:flutter/material.dart';

class AppDecoration {
  static BoxDecoration outlinePrimary = BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.circular(10.0),
  );

  static BoxDecoration outlinePrimary1 = BoxDecoration(
    color: Colors.grey.shade200,
    border: Border.all(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.circular(38.0),
  );

  static BoxDecoration filledPrimary = BoxDecoration(
    color: Colors.blueAccent.withOpacity(0.1),
    borderRadius: BorderRadius.circular(10.0),
  );

  static BoxDecoration circleBorder38 = BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(color: Colors.blueAccent, width: 2.0),
  );

  static BoxDecoration roundedBorder10 = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  );
}
