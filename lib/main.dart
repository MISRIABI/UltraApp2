import 'package:flutter/material.dart';

import 'dart:ui';

void main() => runApp(MaterialApp(
  home: HomePage(),
  debugShowCheckedModeBanner: false,
));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ultra App'),
        centerTitle: true,
        backgroundColor: Colors.purple[400],
      ),
      body:Container(
//        padding: EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
          color:Colors.purpleAccent[200],
        ),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(160,30,140,30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  CircleAvatar(
                    radius: 35.0,
                    backgroundColor: Colors.purple,
                    child: Icon(
                      Icons.person,
                      size: 50.0,

                    ),


                  ),
                  Text("Login", style: TextStyle(color: Colors.white, fontSize: 20), ),
                  SizedBox(height: 10,),



                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: Column(
                  children: [
                    SizedBox(height: 60,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [BoxShadow(
                                color: Color.fromRGBO(225, 95, 27, .3),
                                blurRadius: 20,
                                offset: Offset(0, 10)
                            )]
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.purpleAccent,
                                  width: 2,

                                ),
                                borderRadius: const BorderRadius.all(const Radius.circular(25)),
                                //border: Border(bottom:  BorderSide(color:  Colors.grey[200]))

                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.email,
                                    color: Colors.purpleAccent,
                                  ),
                                  hintText: "Enter your email",
                                  hintStyle: TextStyle(color:  Colors.grey),
                                  border: InputBorder.none,
                                ),
                              ),

                            ),
                            SizedBox(height: 7,),
                            Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                // border: Border(bottom:  BorderSide(color:  Colors.grey[200]))
                                border: Border.all(
                                  color: Colors.purpleAccent,
                                  width: 2,

                                ),
                                borderRadius: const BorderRadius.all(const Radius.circular(25)),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    icon: Icon(
                                      Icons.lock,
                                      color: Colors.purpleAccent,
                                    ),
                                    hintText: "Enter your password",
                                    hintStyle: TextStyle(color:  Colors.grey),
                                    border: InputBorder.none
                                ),
                              ),
                            ),

                            SizedBox(height: 40,),
                            Container(
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.purpleAccent,
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 0.0, 0.0, 0.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "LOGIN",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 240.0),
                                      Icon(
                                        Icons.arrow_right_alt,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),

//                                child: FlatButton.icon(
//                                  onPressed: (){},
//                                  color: Colors.purpleAccent,
//                                  label: Text(
//                                    'LOGIN',
//
//                                  ),
//                                  icon: Icon(
//                                    Icons.arrow_right_alt_rounded,
//                                  ),
//
//                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

