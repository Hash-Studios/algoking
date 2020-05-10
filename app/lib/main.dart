import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

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
  List isOpen = [
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List leadingIcons = [
    "assets/images/graph.png",
    "assets/images/search.png",
    "assets/images/sort.png",
    "assets/images/plus.png",
    "assets/images/data.png",
    "assets/images/process.png",
  ];
  List listText = [
    "Graph",
    "Search",
    "Sort",
    "Maths",
    "Data Structures",
    "Greedy"
  ];
  List trailingIcons = [
    "assets/images/Cityscapes Downtown.png",
    "assets/images/Cityscapes Downtown-1.png",
    "assets/images/Cityscapes Downtown-2.png",
    "assets/images/Cityscapes Downtown-3.png",
    "assets/images/Cityscapes Downtown-4.png",
    "assets/images/Cityscapes Downtown-5.png",
  ];
  void changeIsOpen(int index) {
    setState(() {
      isOpen[index] = isOpen[index] ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.grey),
      color: Colors.grey,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Container(
          color: Color(0xFF3F5F9),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                elevation: 20,

                // stretchTriggerOffset: 400,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        bottomRight: Radius.circular(24))),
                backgroundColor: Color(0xFFFFFFFF),
                pinned: this._pinned,
                snap: this._snap,
                floating: this._floating,
                expandedHeight: 276.0,
                centerTitle: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text("Algorithm Toolbox",
                      style: GoogleFonts.abrilFatface(
                          fontSize: 20, color: Color(0xFF000000))),
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(24),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              // Expanded(
                              //   child:
                              SizedBox(
                                width: 40,
                              ),
                              Image.asset(
                                "assets/images/appbar.png",
                                // fit: BoxFit.fitHeight,
                              ),
                              // ),
                            ],
                          )),
                      ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(24),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset("assets/images/appbartext.png"),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              SliverList(delegate: new SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                if (index > listText.length - 1) return null;
                return Stack(
                  children: [
                    Card(
                      elevation: 10,
                      color: Color(0xFFFBC02D),
                      margin: EdgeInsets.fromLTRB(19, 24, 19, 6),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              leadingIcons[index],
                              height: 75,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                            child: Text(
                              listText[index],
                              style: GoogleFonts.bebasNeue(fontSize: 24),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 33, 50, 0),
                          child: Opacity(
                            opacity: 0.8,
                            child: Image.asset(
                              trailingIcons[index],
                              // color: Color(0xFFFBC02D),
                              // colorBlendMode: BlendMode.overlay,
                              height: 95,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(19, 24, 19, 6),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: MaterialButton(
                          child: SizedBox(height: 91, width: 500),
                          onPressed: () {
                            HapticFeedback.vibrate();
                            changeIsOpen(index);
                            print(isOpen);
                          },
                        ),
                      ),
                    ),
                  ],
                );
              }))
              // SliverFixedExtentList(
              //   itemExtent: 350.0,
              //   delegate: SliverChildListDelegate.fixed(
              //     [
              //       Container(
              //         child: Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Card(),
              //         ),
              //         color: Color(0xFF3F5F9),
              //       ),
              //       Container(
              //         child: Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Card(),
              //         ),
              //         color: Color(0xFF3F5F9),
              //       ),
              //     ],
              //   ),
              // ),
              // SliverFillRemaining(
              //   child:
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
