import 'package:flutter/material.dart';

class MyPassiveProvider extends ChangeNotifier {
  final List<Offset> _offsetList = [
    // Colonne 1
    const Offset(50, 90),
    const Offset(50, 175),
    const Offset(50, 260),

    // Colonne 2
    const Offset(599.5, 60),
    const Offset(599, 116),
    const Offset(599, 174.5),
    const Offset(599, 231),
  ];

  List<Offset> get offsetList => _offsetList;
}
