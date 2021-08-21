import 'package:flutter/material.dart';

class Hs extends StatefulWidget {
  const Hs({Key? key}) : super(key: key);

  @override
  _HsState createState() => _HsState();
}

class _HsState extends State<Hs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/5.jpg'), fit: BoxFit.cover),
      ),
      child: Container(
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 250,
                      height: 245,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/3.png'),
                              fit: BoxFit.fill)),
                    ),
                    Container(
                      child: Text(
                        'اتصل بنا',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      color: Colors.transparent,
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        color: Colors.white.withOpacity(0.4),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Text(
                                "jxnhckjjznx",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              Spacer(),
                              Text(
                                "kjbshb",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.web_sharp,
                                color: Color(0xff6885e3),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        color: Colors.white.withOpacity(0.4),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Text(
                                "jxnhckjjznx",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              Spacer(),
                              Text(
                                "kjbshb",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.web_sharp,
                                color: Color(0xff6885e3),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        color: Colors.white.withOpacity(0.4),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Text(
                                "jxnhckjjznx",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              Spacer(),
                              Text(
                                "kjbshb",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.web_sharp,
                                color: Color(0xff6885e3),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        color: Colors.white.withOpacity(0.4),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Text(
                                "jxnhckjjznx",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              Spacer(),
                              Text(
                                "kjbshb",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.web_sharp,
                                color: Color(0xff6885e3),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
