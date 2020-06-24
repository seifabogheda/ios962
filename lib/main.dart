import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios962/Screens/HomePage.dart';
import 'package:ios962/Screens/monthlyPlans.dart';
import 'package:ios962/Screens/paidServices.dart';
import 'package:ios962/Screens/signIn.dart';
import 'package:ios962/Screens/verificationCode.dart';
import 'package:device_preview/device_preview.dart';
main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.yellow,
      cursorColor: Colors.yellow,
    ),
    home: SignInScreen(),
    routes: {
      SignInScreen.id: (context) => SignInScreen(),
      Verification.id: (context) => Verification(),
      HomePage.id: (context) => HomePage(),
      MonthlyPlans.id: (context) => MonthlyPlans(),
      PaidServices.id: (context) => PaidServices(),
    },
  ));
}
