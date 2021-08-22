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
  bool _isFavorited = true;
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
          appBar: AppBar(
            excludeHeaderSemantics: true,
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
            itemCount: 50,
            itemBuilder: (context, index) {
              return Padding(
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
                      leading: IconButton(
                        padding: EdgeInsets.all(0),
                        alignment: Alignment.centerRight,
                        icon: (_isFavorited
                            ? Icon(Icons.favorite_outlined)
                            : Icon(Icons.favorite_outline)),
                        color: Color(0xff6885e3),
                        onPressed: _toggleFavorite,
                      ),
                      title: Text(
                        "من نحن",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => first()));
                        },
                        icon: Icon(
                          Icons.navigate_next_outlined,
                          color: Color(0xff6885e3),
                          size: 30,
                        ),
                      )),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
      } else {
        _isFavorited = true;
      }
    });
  }
}
