import 'package:flutter/material.dart';

import 'aboutus.dart';

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
        gradient: LinearGradient(
            colors: [Color(0xff6885e3), Color(0xffffffff)],
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter,
            stops: [0.3, 1.2]),
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
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/3.png'),
                              fit: BoxFit.fill)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff6885e3), Color(0xffffffff)],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              stops: [0, 0.5]),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.4),
                        ),
                        margin: EdgeInsets.all(0),
                        child: ListTile(
                            onTap: () {},
                            leading: Icon(
                              Icons.info_outline,
                              color: Color(0xff6885e3),
                            ),
                            title: Text(
                              "من نحن",
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                            trailing: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AboutUsPage()));
                              },
                              icon: Icon(
                                Icons.navigate_next_outlined,
                                color: Color(0xff6885e3),
                                size: 30,
                              ),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff6885e3), Color(0xffffffff)],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              stops: [0, 0.5]),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.4),
                        ),
                        margin: EdgeInsets.all(0),
                        child: Padding(
                          padding: EdgeInsets.all(0),
                          child: ListTile(
                            onTap: () {},
                            leading: Icon(
                              Icons.web_sharp,
                              color: Color(0xff6885e3),
                            ),
                            title: Text(
                              "jxnhckjjznx",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            trailing: Icon(
                              Icons.navigate_next_outlined,
                              color: Color(0xff6885e3),
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff6885e3), Color(0xffffffff)],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              stops: [0, 0.5]),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.4),
                        ),
                        margin: EdgeInsets.all(0),
                        child: Padding(
                          padding: EdgeInsets.all(0),
                          child: ListTile(
                            onTap: () {},
                            leading: Icon(
                              Icons.web_sharp,
                              color: Color(0xff6885e3),
                            ),
                            title: Text(
                              "jxnhckjjznx",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            trailing: Icon(
                              Icons.navigate_next_outlined,
                              color: Color(0xff6885e3),
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff6885e3), Color(0xffffffff)],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              stops: [0, 0.5]),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.4),
                        ),
                        margin: EdgeInsets.all(0),
                        child: Padding(
                          padding: EdgeInsets.all(0),
                          child: ListTile(
                            onTap: () {},
                            leading: Icon(
                              Icons.web_sharp,
                              color: Color(0xff6885e3),
                            ),
                            title: Text(
                              "jxnhckjjznx",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            trailing: Icon(
                              Icons.navigate_next_outlined,
                              color: Color(0xff6885e3),
                              size: 30,
                            ),
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
