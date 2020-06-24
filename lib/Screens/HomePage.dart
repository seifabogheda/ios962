import 'package:flutter/material.dart';
import 'package:ios962/Screens/monthlyPlans.dart';
import 'package:ios962/Screens/paidServices.dart';

class HomePage extends StatelessWidget {
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    double heights = MediaQuery.of(context).size.height;
    double widths = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Container(
              height: heights * 0.61,
              color: Colors.white,
              child: Stack(
                children: <Widget>[
                  Container(
                    color: Colors.yellow,
                    height: heights * 0.5,
                  ),
                  Positioned(
                    right: MediaQuery.of(context).size.width*0.4,
                    left: MediaQuery.of(context).size.width*0.4,
                    top: 0,
                    child: Container(

                      child: Center(child: Image(image: AssetImage('assets/2.png'))),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Choose your desired Service',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    width: MediaQuery.of(context).size.width,
                    top: MediaQuery.of(context).size.height*0.41,
                    bottom: 0,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          GestureDetector(
                            onTap:(){
                              Navigator.pushNamed(context, MonthlyPlans.id);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.7),
                                border: Border.all(
                                    color: Colors.grey
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height:MediaQuery.of(context).size.height*0.4,
                              width: MediaQuery.of(context).size.width*0.3,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      height:MediaQuery.of(context).size.height*0.14,
                                      width: MediaQuery.of(context).size.width*0.2,
                                      child: Image(image: AssetImage('assets/2131.png'),)),
                                  Text('Monthy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                                  Text('Plans',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, PaidServices.id);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.7),
                                border: Border.all(
                                    color: Colors.grey
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height:MediaQuery.of(context).size.height*0.4,
                              width: MediaQuery.of(context).size.width*0.3,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      height:MediaQuery.of(context).size.height*0.14,
                                      width: MediaQuery.of(context).size.width*0.2,
                                      child: Image(image: AssetImage('assets/paymoney.png'),)),
                                  Text('Paid',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                                  Text('Services',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
            buildContainer(context),
          ],
        ),
      ),
    );
  }

  Container buildContainer(BuildContext context) {
    return Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      border: Border.all(
                          color: Colors.grey
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height:MediaQuery.of(context).size.height*0.2,
                    width: MediaQuery.of(context).size.width*0.3,
                    child: Column(
                      children: <Widget>[
                        Container(
                            height:MediaQuery.of(context).size.height*0.14,
                            width: MediaQuery.of(context).size.width*0.2,
                            child: Image(image: AssetImage('assets/sd.png'),)),
                        Text(
                          'Complaints',style: TextStyle(
                            fontWeight: FontWeight.bold,fontSize: 14),),
                        Text('',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    showDialog(context: context,builder: (BuildContext context){
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: AlertDialog(
                          titlePadding: EdgeInsets.only(left: 0,right: MediaQuery.of(context).size.width*0.6),
                          title: IconButton(icon: Icon(Icons.close), onPressed: (){
                            Navigator.pop(context);
                          }),
                          content: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            height: MediaQuery.of(context).size.height*0.4,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Image(image: AssetImage('assets/Evaluation.png'),fit: BoxFit.fill,),
                                  height: MediaQuery.of(context).size.height*0.1,
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height*0.02),
                                Text('Evaluation',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                SizedBox(height: MediaQuery.of(context).size.height*0.003),
                                Text('Dear Customer',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                                SizedBox(height: MediaQuery.of(context).size.height*0.03),
                                Text('Please note that the Evaluation will be available At the end of every month.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.black,
                                  ),
                                  child: FlatButton(
                                      child: Text('OK',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white)),
                                      onPressed: (){
                                        Navigator.pop(context);
                                      }),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      border: Border.all(
                          color: Colors.grey
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height:MediaQuery.of(context).size.height*0.2,
                    width: MediaQuery.of(context).size.width*0.3,
                    child: Column(
                      children: <Widget>[
                        Container(
                            height:MediaQuery.of(context).size.height*0.14,
                            width: MediaQuery.of(context).size.width*0.2,
                            child: Image(image: AssetImage('assets/list.png'),)),
                        Text('Evaluation',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                        Text('',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
  }
  
}
