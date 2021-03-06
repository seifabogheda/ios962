import 'package:flutter/material.dart';

class MonthlyPlans extends StatelessWidget {
  static String id = 'MonthlyPlans';

  @override
  Widget build(BuildContext context) {
    double heights = MediaQuery.of(context).size.height;
    double widths = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        height: heights,
        child: Stack(
          children: <Widget>[
            Container(
              color: Colors.yellow,
              height: heights * 0.3,
            ),
            Positioned(
              right: 155,
              left: 155,
              child: Container(
                height: heights * 0.15,
                width: widths * 0.09,
                child: Center(
                  child: Image(
                    image: AssetImage('assets/2.png'),
                  ),
                ),
              ),
            ),
            Positioned(
              top: heights*0.18,
              right: widths*0.5,
              child: Center(
                child: Text(
                  'Monthly Services',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              width: MediaQuery.of(context).size.width,
              top: MediaQuery.of(context).size.height*0.07,
              bottom: heights*0.4,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    GestureDetector(
                      onTap:(){
                       // Navigator.pushNamed(context, MonthlyPlans.id);
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
                                child: Image(image: AssetImage('assets/unnamed (2).png'),)),
                            Text('Waste',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                            Text('collection',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        //Navigator.pushNamed(context, PaidServices.id);
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
                                child: Image(image: AssetImage('assets/cleaning.png'),)),
                            Text('Building',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                            Text('cleaning',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              width: MediaQuery.of(context).size.width,
              top: MediaQuery.of(context).size.height*0.3,
              bottom: heights*0.15,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    GestureDetector(
                      onTap:(){
                        // Navigator.pushNamed(context, MonthlyPlans.id);
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
                                child: Image(image: AssetImage('assets/unnamed (3).png'),)),
                            Text('Car Wash',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                            Text('',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        //Navigator.pushNamed(context, PaidServices.id);
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
                                child: Image(image: AssetImage('assets/gas.png'),)),
                            Text('Home',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                            Text('Necessities',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 125,
              left: 125,
              bottom: heights*0.1,
              child: GestureDetector(
                onTap:(){
                  // Navigator.pushNamed(context, MonthlyPlans.id);
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
                  width: MediaQuery.of(context).size.width*0.25,
                  child: Column(
                    children: <Widget>[
                      Container(
                          height:MediaQuery.of(context).size.height*0.14,
                          width: MediaQuery.of(context).size.width*0.17,
                          child: Image(image: AssetImage('assets/order 2.png'),)),
                      Text('Daily',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                      Text('orders',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
