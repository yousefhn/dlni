import 'package:flutter/material.dart';

import '../home.dart';

class Next extends StatefulWidget {
  Next({Key? key, required this.ph})
      : super(
          key: key,
        );
  late final String ph;

  @override
  NextState createState() => NextState(phone: '$ph');
}

class NextState extends State<Next> {
  String phone;
  NextState({
    required this.phone,
    Key? key,
  });
  void Ph() {
    setState(() {
      phone = widget.ph;
    });
  }

  TextEditingController _phone = TextEditingController();
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/7.jpg'), fit: BoxFit.cover),
      ),
      child: Container(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'اهلاً وسهلاً,أدخل رمز \nالتفعيل الذي سيصلك برسالة نصيةالى الرقم\n ${phone}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Color(0xffffffff),
                    ),
                  ),

                  // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  // //width: double.infinity,
                  // decoration: BoxDecoration(
                  //   color: Colors.white.withOpacity(0.5),
                  //   borderRadius: BorderRadius.circular(15),
                  // ),
                  // child: TextField(
                  //   decoration: InputDecoration(hintText: 'رقم الهاتف'),
                  // ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Form(
                          key: _formkey,
                          child: TextFormField(
                            validator: (_phone) {
                              if (_phone.toString().length < 10) {
                                return 'أدخل عشر ارقام باحيوان';
                              } else {
                                return null;
                              }
                            },
                            controller: _phone,
                            style: TextStyle(
                                fontSize: 16.0, color: Color(0xff6885e3)),
                            keyboardType: TextInputType.phone,
                            textAlign: TextAlign.right,
                            maxLength: 10,
                            decoration: InputDecoration(
                              fillColor: Color(0xffffffff).withOpacity(0.5),
                              // enabled: true,
                              prefixIcon: Icon(
                                Icons.phone,
                                size: 30,
                                color: Color(0xff6885e3),
                              ),

                              labelText: "رمز التأكيد ",
                              //  errorText: _emp,
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.red,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Color(0xff6885e3),
                                ),
                              ),

                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Color(0xff6885e3),
                                ),
                              ),

                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Color(0xff6885e3),
                                ),
                              ),
                              filled: true,
                              labelStyle: TextStyle(
                                height: 0.5,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Color(0xff6885e3),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xff6885e3), Color(0xffffffff)],
                                begin: Alignment.bottomRight,
                                end: Alignment.topLeft,
                                stops: [0.4, 2]),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: RaisedButton(
                            elevation: 0,
                            color: Colors.transparent,
                            onPressed: () {
                              setState(() {
                                if (_formkey.currentState!.validate()) {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          elevation: 0.8,
                                          backgroundColor:
                                              Colors.white.withOpacity(0.9),
                                          actionsPadding:
                                              EdgeInsets.only(bottom: 20),
                                          contentPadding: EdgeInsets.only(
                                            left: 100,
                                            right: 100,
                                            top: 40,
                                          ),
                                          contentTextStyle: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                          content: Container(
                                            height: 150,
                                            child: Column(
                                              children: [
                                                Text("تأكد من معلوماتك "),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Text("${_phone.text}"),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                              ],
                                            ),
                                          ),
                                          actions: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                  height: 30,
                                                  child: FlatButton(
                                                    child: Text('نعم'),
                                                    onPressed: () {},
                                                  ),
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                        colors: [
                                                          Color(0xff6885e3),
                                                          Color(0xffffffff)
                                                        ],
                                                        begin: Alignment
                                                            .bottomRight,
                                                        end: Alignment.topLeft,
                                                        stops: [0, 1]),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                ),
                                                Container(
                                                  height: 30,
                                                  child: FlatButton(
                                                    child: Text('لا'),
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                  ),
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                        colors: [
                                                          Color(0xff6885e3),
                                                          Color(0xffffffff)
                                                        ],
                                                        begin: Alignment
                                                            .bottomRight,
                                                        end: Alignment.topLeft,
                                                        stops: [0, 1]),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        );
                                      });
                                }
                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                            child: Text(
                              "إدخال",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
