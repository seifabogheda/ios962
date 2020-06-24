import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios962/CustomWidgets/CustomTextField.dart';
import 'package:ios962/Screens/HomePage.dart';
import '../CustomWidgets/CustomTextField2.dart';
import '../CustomWidgets/CustomTextField3.dart';
import '../CustomWidgets/CustomTextField4.dart';

class Verification extends StatefulWidget {
  static String id = 'Verification';
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  var radio1 = 0;

  void radioChecked(int val) {
    setState(() {
      radio1 = val;
    });
  }

  int _mobile, _ElecCounter, _WaterCounter, _BNumber, _DNumber;
  String _password, _fullName, _Dlocation;
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    double heights = MediaQuery
        .of(context)
        .size
        .height;
    double widths = MediaQuery
        .of(context)
        .size
        .width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.black,
        body: ListView(
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                      height: heights * 0.35,
                      width: widths,
                      child: Image(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/1.png'),
                      )),
                  Positioned(
                    child: Container(
                      height: heights * 0.35,
                      width: widths,
                      color: CupertinoColors.systemYellow.withOpacity(0.55),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    child: Container(
                        height: heights * 0.10,
                        width: widths,
                        child: Center(
                          child: Image(image: AssetImage('assets/2.png')),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.1,),
            Center(child: Text('Enter Verification Code',style: TextStyle(color: Colors.yellow,fontSize: 20),),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
            Center(
              child: Container(
                width: 120,
                color: Colors.white.withOpacity(0.2),
                child: TextFormField(
                  maxLength: 4,
                  style: TextStyle(color: Colors.yellow),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(

                    hintText: '- - - -',
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.yellow.withOpacity(0.6),
                    ),
                    hoverColor: Colors.yellow,
                    fillColor: Colors.yellow,
                  ),
                ),
              ),
            ),
            confirmButtom(),
          ],
        ),
      ),
    );
  }
  Padding confirmButtom() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 12),
      child: Builder(
        builder: (context) => RaisedButton(
          color: Colors.yellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil(HomePage.id, (route) => false);
            //    _validate(context);
          },
          child: Text(
            'Confirm',
            style: TextStyle(color: Colors.black, fontSize: 22),
          ),
        ),
      ),
    );
  }
}