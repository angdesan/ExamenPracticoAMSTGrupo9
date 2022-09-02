
import 'package:examen_final_flutter/UI/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ExampleApp extends StatefulWidget {
  const ExampleApp({Key? key}) : super(key: key);
  @override
  State<ExampleApp> createState() => _ExampleApp();
}

class _ExampleApp extends State<ExampleApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: AppColors.mainColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          brightness: Brightness.light),
      initialRoute: '/',
      onGenerateRoute: Routes.generateRoute,
    );
  }
}


