import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios962/CustomWidgets/CustomTextField.dart';
import 'package:ios962/Screens/verificationCode.dart';
import '../CustomWidgets/CustomTextField2.dart';
import '../CustomWidgets/CustomTextField3.dart';
import '../CustomWidgets/CustomTextField4.dart';

import '../Provider/modelHud.dart';
import 'HomePage.dart';
class SignInScreen extends StatefulWidget {
  static String id = 'SignInScreen';
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  var radio1 = 0;
  void radioChecked(int val){
    setState(() {
       radio1 = val;
    });
  }
  int _mobile, _ElecCounter, _WaterCounter, _BNumber, _DNumber;
  String _password, _fullName, _Dlocation;
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    double heights = MediaQuery.of(context).size.height;
    double widths = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.black,
        body: Form(
          child: ListView(
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
                        color: Colors.yellow.withOpacity(0.55),
                      ),
                    ),
                    Positioned(
                      top: heights*0.12,
                      child: Container(
                          height: heights * 0.10,
                          width: widths,
                          child: Center(
                            child: Image(image: AssetImage('assets/2.png')),
                          )),
                    ),
                    Positioned(
                      bottom: 10,
                      child: Container(
                        width: widths,
                        child: TabBar(
                          indicatorColor: Colors.black,
                          tabs: <Widget>[
                            Tab(
                              child: Text(
                                'Sign in',
                                style:
                                    TextStyle(color: Colors.black, fontSize: 20),
                              ),
                            ),
                            Tab(
                              child: Text('Sign up',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: heights * 0.5,
                width: widths,
                child: TabBarView(
                  children: <Widget>[
                    // --------------- Sign in -----------------
                    SignIN(widths),
                    // --------------  Sign up ------------------
                    ListView(
                      children: <Widget>[
                        CustomTextField(
                          icon: Icons.person,
                          onClick: (value) {
                            _fullName = value;
                          },
                          hint: "Full name",
                        ),
                        CustomTextField(
                          icon: Icons.vpn_key,
                          onClick: (value) {
                            _mobile = value;
                          },
                          hint: "mobile no.",
                        ),
                        CustomTextField2(
                          onClick: (value) {
                            _BNumber = value;
                          },
                          hint: "Building location",
                        ),
                        CustomTextField2(
                          onClick: (value) {
                            _Dlocation = value;
                          },
                          hint: "Department Number",
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              color: Colors.white30.withOpacity(0.07),
                              child: Radio(
                                focusColor: Colors.white,
                                hoverColor: Colors.white,
                                activeColor: Colors.grey,
                                  value: 0, groupValue: radio1 , onChanged: radioChecked),
                            ),
                            Text('Rented',style: TextStyle(color: Colors.grey,fontSize: 14)),
                           SizedBox(width: 10,),
                            Container(
                              color: Colors.white30.withOpacity(0.07),
                              child: Radio(
                                  activeColor: Colors.grey,
                                  value: 1, groupValue: radio1, onChanged: radioChecked),
                            ),
                            Text('Owned',style: TextStyle(color: Colors.grey,fontSize: 14),),
                          ],
                        ),
                        CustomTextField3(
                          onClick: (value) {
                            _Dlocation = value;
                          },
                          hint: "Water Counter No.",
                        ),
                        CustomTextField4(
                          onClick: (value) {
                            _Dlocation = value;
                          },
                          hint: "Electricity Counter No.",
                        ),
                        CustomTextField(
                          icon: Icons.vpn_key,
                          onClick: (value) {
                            _password = value;
                          },
                          hint: "Password",
                        ),
                        CustomTextField(
                          icon: Icons.vpn_key,
                          onClick: (value) {
                            _password = value;
                          },
                          hint: "Confirm Password",
                        ),
                        SignUpbutton(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget SignIN(double widths) {
    return ListView(
                    children: <Widget>[
                      CustomTextField(
                        icon: Icons.phone,
                        onClick: (value) {
                          _mobile = value;
                        },
                        hint: "Mobile no.",
                      ),
                      CustomTextField(
                        icon: Icons.vpn_key,
                        onClick: (value) {
                          _mobile = value;
                        },
                        hint: "Password",
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          width: widths,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                color: Colors.white30.withOpacity(0.08),
                                child: Checkbox(
                                    focusColor: Colors.white,
                                    checkColor: Colors.white,
                                    activeColor: Colors.grey,
                                    value: checkBoxValue,
                                    onChanged: (bool value) {
                                      setState(() {
                                        checkBoxValue = value;
                                      });
                                    }),
                              ),
                              Text(
                                'Remember me',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      loginbutton(),
                      GestureDetector(
                        onTap: () {},
                        child: Center(
                            child: Text(
                          'Forget my password',
                          style: TextStyle(color: Colors.yellow),
                        )),
                      ),
                    ],
                  );
  }

  Padding loginbutton() {
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
            'Sign in',
            style: TextStyle(color: Colors.black, fontSize: 22),
          ),
        ),
      ),
    );
  }
}
//void _validate(BuildContext context) async {
//  final modelhud = Provider.of<ModelHud>(context, listen: false);
//  modelhud.changeIsLoading(true);
//  if (_globalKey.currentState.validate()) {
//    _globalKey.currentState.save();
//    if (Provider.of<ModelAdmin>(context, listen: false).isAdmin) {
//      if (_password == adminPass ) {
//        try {
//          await _auth.signIn(_email, _password);
//          Navigator.pushNamed(context, AdminPage.id);
//        } catch (e) {
//          modelhud.changeIsLoading(false);
//          Scaffold.of(context).showSnackBar(
//            SnackBar(
//              content: Text(e.message),
//            ),
//          );
//        }
//      }
//      else{
//        modelhud.changeIsLoading(false);
//        Scaffold.of(context).showSnackBar(
//          SnackBar(
//            content: Text('Something Went Wrong !'),
//          ),
//        );
//      }
//    } else {
//      try {
//        await _auth.signIn(_email, _password);
//        modelhud.changeIsLoading(false);
//        Navigator.pushNamed(context, HomePage.id);
//      } catch (e) {
//        modelhud.changeIsLoading(false);
//        Scaffold.of(context).showSnackBar(
//          SnackBar(
//            content: Text(e.message),
//          ),
//        );
//      }
//    }
//  }
//  modelhud.changeIsLoading(false);
//}
Padding SignUpbutton() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 15),
    child: Builder(
      builder: (context) => RaisedButton(
        color: Colors.yellow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {
          Navigator.of(context).pushNamedAndRemoveUntil(Verification.id, (route) => false);
          // _validate(context);
        },
        child: Text(
          'Sign up',
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
      ),
    ),
  );

}
