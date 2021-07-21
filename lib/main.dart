import 'package:flutter/material.dart';
import 'package:responsive_design/utils/device_info.dart';
import 'package:responsive_design/screens/dreamer_notebook.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double densityAmt = DeviceOS.isMobile ? 0.0 : -1.0;
    VisualDensity density =
        VisualDensity(horizontal: densityAmt, vertical: densityAmt);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Responsive Design in Flutter',
        theme: ThemeData(primarySwatch: Colors.blue, visualDensity: density),
        home: const DreamerNotebook());
  }
}
