import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xF3F5F9),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              elevation: 5,
              // stretchTriggerOffset: 400,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              backgroundColor: Color(0xFFFFFFFF),
              pinned: this._pinned,
              snap: this._snap,
              floating: this._floating,
              expandedHeight: 276.0,
              centerTitle: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  "Algorithm Toolbox",
                  style: TextStyle(
                    // fontFamily: "A",
                    color: Color(0xFF000000),
                  ),
                ),
                background: Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                        ),
                        child: Image.asset("assets/images/appbar.png")),
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                        ),
                        child: Image.asset("assets/images/appbartext.png")),
                  ],
                ),
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 650.0,
              delegate: SliverChildListDelegate.fixed(
                [
                  // SizedBox(height: 40)
                ],
              ),
            ),
            // SliverFillRemaining(
            //   child:
            // ),
          ],
        ),
      ),
    );
  }
}
