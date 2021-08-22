import 'dart:math' as math;

import 'package:example/aboutus.dart';
import 'package:example/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'hsaab.dart';

void main() {
  runApp(new SearchBarDemoApp());
}

class SearchBarDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('ar', 'AR'), // English, no country code
        ],
        debugShowCheckedModeBanner: false,
        title: 'Search Bar Demo',
        theme: new ThemeData(primarySwatch: Colors.blue),
        home: Splashscreen());
  }
}

class SearchBarDemoHome extends StatefulWidget {
  @override
  _SearchBarDemoHomeState createState() => new _SearchBarDemoHomeState();
}

class _SearchBarDemoHomeState extends State<SearchBarDemoHome> {
  static const _actionTitles = ['Create Post', 'Upload Photo', 'Upload Video'];
  void _showAction(BuildContext context, int index) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(_actionTitles[index]),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('CLOSE'),
            ),
          ],
        );
      },
    );
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //appBar: searchBar.build(context),
      endDrawer: SafeArea(
        child: Container(
          width: 250,
          child: ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
            child: Drawer(
                elevation: 0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xff6885e3), Color(0xffffffff)],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        stops: [0.4, 2]),
                  ),
                  child: ListView(
                    //padding: EdgeInsets.zero,
                    children: [
                      DrawerHeader(
                        child: Container(
                          child: Image(
                            height: 180,
                            width: 230,
                            image: AssetImage('assets/images/3.png'),
                          ),
                        ),
                        margin: EdgeInsets.only(top: 5),
                      ),
                      ListTile(
                        title: Text("الحساب"),
                        trailing: Icon(Icons.person_outline),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Hs()));
                        },
                      ),
                      ListTile(
                        title: Text("من نحن"),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AboutUsPage()));
                        },
                        trailing: Icon(Icons.info_outline),
                      ),
                      ListTile(
                        title: Text("تسجيل الخروج"),
                        trailing: Icon(Icons.logout),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  elevation: 0.8,
                                  backgroundColor:
                                      Colors.white.withOpacity(0.9),
                                  actionsPadding: EdgeInsets.only(bottom: 20),
                                  contentPadding: EdgeInsets.only(
                                    left: 100,
                                    right: 100,
                                    top: 40,
                                  ),
                                  contentTextStyle: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                  content: Container(
                                    height: 150,
                                    child: Column(
                                      children: [
                                        Text("تأكد من معلوماتك "),
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
                                                begin: Alignment.bottomRight,
                                                end: Alignment.topLeft,
                                                stops: [0, 1]),
                                            borderRadius:
                                                BorderRadius.circular(16),
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
                                                begin: Alignment.bottomRight,
                                                end: Alignment.topLeft,
                                                stops: [0, 1]),
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                );
                              });
                        },
                      ),
                    ],
                  ),
                )),
          ),
        ),
      ),
      key: _scaffoldKey,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 5,
        flexibleSpace: SafeArea(
          child: Container(
            child: TextField(
              style: TextStyle(fontSize: 16.0, color: Color(0xff6885e3)),
              //keyboardType: TextInputType.phone,
              //textAlign: TextAlign.right,
              decoration: InputDecoration(
                fillColor: Color(0xffffffff).withOpacity(0.5),
                // enabled: true,
                prefixIcon: Icon(
                  Icons.search,
                  size: 30,
                  color: Color(0xff6885e3),
                ),
                hintText: "إبحث ",
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
                hintStyle: TextStyle(
                  height: 0.5,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color(0xff6885e3),
                ),
              ),
            ),
          ),
        ),
      ),
      //body:  ,
      floatingActionButton: ExpandableFab(
        distance: 80.0,
        children: [
          ActionButton(
            onPressed: () => _showAction(context, 0),
            icon: const Icon(Icons.location_on_outlined),
          ),
          ActionButton(
            onPressed: () => _showAction(context, 1),
            icon: const Icon(Icons.share_location_sharp),
          ),
        ],
      ),
    );
  }
}

@immutable
class ExpandableFab extends StatefulWidget {
  const ExpandableFab({
    Key? key,
    this.initialOpen,
    required this.distance,
    required this.children,
  }) : super(key: key);

  final bool? initialOpen;
  final double distance;
  final List<Widget> children;

  @override
  _ExpandableFabState createState() => _ExpandableFabState();
}

class _ExpandableFabState extends State<ExpandableFab>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _expandAnimation;
  bool _open = false;

  @override
  void initState() {
    super.initState();
    _open = widget.initialOpen ?? false;
    _controller = AnimationController(
      value: _open ? 1.0 : .0,
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
    _expandAnimation = CurvedAnimation(
      curve: Curves.fastOutSlowIn,
      reverseCurve: Curves.easeOutQuad,
      parent: _controller,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggle() {
    setState(() {
      _open = !_open;
      if (_open) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Stack(
        alignment: Alignment.bottomLeft,
        clipBehavior: Clip.none,
        children: [
          _buildTapToCloseFab(),
          ..._buildExpandingActionButtons(),
          _buildTapToOpenFab(),
        ],
      ),
    );
  }

  Widget _buildTapToCloseFab() {
    return SizedBox(
      width: 56.0,
      height: 56.0,
      child: Center(
        child: Material(
          shape: const CircleBorder(),
          clipBehavior: Clip.antiAlias,
          elevation: 4.0,
          child: InkWell(
            onTap: _toggle,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.close,
                color: Color(0xff6885e3).withOpacity(0.8),
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildExpandingActionButtons() {
    final children = <Widget>[];
    final count = widget.children.length;
    final step = 65.0 / (count - 1);
    for (var i = 0, angleInDegrees = 13.0;
        i < count;
        i++, angleInDegrees += step) {
      children.add(
        _ExpandingActionButton(
          directionInDegrees: angleInDegrees,
          maxDistance: widget.distance,
          progress: _expandAnimation,
          child: widget.children[i],
        ),
      );
    }
    return children;
  }

  Widget _buildTapToOpenFab() {
    return IgnorePointer(
      ignoring: _open,
      child: AnimatedContainer(
        transformAlignment: Alignment.center,
        transform: Matrix4.diagonal3Values(
          _open ? 0.7 : 1.0,
          _open ? 0.7 : 1.0,
          1.0,
        ),
        duration: const Duration(milliseconds: 250),
        curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
        child: AnimatedOpacity(
          opacity: _open ? 0.0 : 1.0,
          curve: const Interval(0.2, 1.0, curve: Curves.easeInOut),
          duration: const Duration(milliseconds: 250),
          child: FloatingActionButton(
            backgroundColor: Color(0xff6885e3),
            onPressed: _toggle,
            child: const Icon(Icons.add_circle_outline),
          ),
        ),
      ),
    );
  }
}

@immutable
class _ExpandingActionButton extends StatelessWidget {
  _ExpandingActionButton({
    Key? key,
    required this.directionInDegrees,
    required this.maxDistance,
    required this.progress,
    required this.child,
  }) : super(key: key);

  final double directionInDegrees;
  final double maxDistance;
  final Animation<double> progress;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: progress,
      builder: (context, child) {
        final offset = Offset.fromDirection(
          directionInDegrees * (math.pi / 180.0),
          progress.value * maxDistance,
        );
        return Positioned(
          left: 4.0 + offset.dx,
          bottom: 4.0 + offset.dy,
          child: Transform.rotate(
            angle: (1.0 - progress.value) * math.pi / 2,
            child: child!,
          ),
        );
      },
      child: FadeTransition(
        opacity: progress,
        child: child,
      ),
    );
  }
}

@immutable
class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
    this.onPressed,
    required this.icon,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      shape: const CircleBorder(),
      clipBehavior: Clip.antiAlias,
      color: Color(0xff6885e3).withOpacity(0.8),
      elevation: 4.0,
      child: IconTheme.merge(
        data: theme.accentIconTheme,
        child: IconButton(
          onPressed: onPressed,
          icon: icon,
        ),
      ),
    );
  }
}
