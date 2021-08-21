import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'one/information.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/11.jpg'), fit: BoxFit.cover),
      ),
      child: Container(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: Text(
              "الاماكن المفضلة",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          body: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(20),
                child: ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => first()));
                  },
                  title: Text('wfjrnfswkjk'),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
