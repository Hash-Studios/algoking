import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_group_sliver/flutter_group_sliver.dart';

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
              SliverList(
                  delegate: new SliverChildListDelegate([
                Stack(
                  children: [
                    Card(
                      elevation: 10,
                      color: Color(0xFFFBC02D),
                      margin: EdgeInsets.fromLTRB(19, 24, 19, 6),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 25.0, horizontal: 10),
                        child: ExpansionTile(
                          leading: Image.asset(
                            "assets/images/graph.png",
                          ),
                          title: new Text(
                            'Graph',
                            style: GoogleFonts.bebasNeue(fontSize: 24),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 32, 50, 0),
                          child: Opacity(
                            opacity: 0.8,
                            child: Image.asset(
                              "assets/images/Cityscapes Downtown.png",
                              color: Color(0xFFFBC02D),
                              colorBlendMode: BlendMode.overlay,
                              height: 95,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Card(
                      elevation: 10,
                      color: Color(0xFFFBC02D),
                      margin: EdgeInsets.fromLTRB(19, 24, 19, 6),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 25.0, horizontal: 10),
                        child: ExpansionTile(
                          leading: Image.asset(
                            "assets/images/search.png",
                          ),
                          title: new Text(
                            'Search',
                            style: GoogleFonts.bebasNeue(fontSize: 24),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 32, 50, 0),
                          child: Opacity(
                            opacity: 0.8,
                            child: Image.asset(
                              "assets/images/Cityscapes Downtown-1.png",
                              color: Color(0xFFFBC02D),
                              colorBlendMode: BlendMode.overlay,
                              height: 95,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Card(
                      elevation: 10,
                      color: Color(0xFFFBC02D),
                      margin: EdgeInsets.fromLTRB(19, 24, 19, 6),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 25.0, horizontal: 10),
                        child: ExpansionTile(
                          leading: Image.asset(
                            "assets/images/sort.png",
                          ),
                          title: new Text(
                            'Sort',
                            style: GoogleFonts.bebasNeue(fontSize: 24),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 32, 50, 0),
                          child: Opacity(
                            opacity: 0.8,
                            child: Image.asset(
                              "assets/images/Cityscapes Downtown-2.png",
                              color: Color(0xFFFBC02D),
                              colorBlendMode: BlendMode.overlay,
                              height: 95,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Card(
                      elevation: 10,
                      color: Color(0xFFFBC02D),
                      margin: EdgeInsets.fromLTRB(19, 24, 19, 6),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 25.0, horizontal: 10),
                        child: ExpansionTile(
                          leading: Image.asset(
                            "assets/images/plus.png",
                          ),
                          title: new Text(
                            'Maths',
                            style: GoogleFonts.bebasNeue(fontSize: 24),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 32, 50, 0),
                          child: Opacity(
                            opacity: 0.8,
                            child: Image.asset(
                              "assets/images/Cityscapes Downtown-3.png",
                              color: Color(0xFFFBC02D),
                              colorBlendMode: BlendMode.overlay,
                              height: 95,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Card(
                      elevation: 10,
                      color: Color(0xFFFBC02D),
                      margin: EdgeInsets.fromLTRB(19, 24, 19, 6),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 25.0, horizontal: 10),
                        child: ExpansionTile(
                          leading: Image.asset(
                            "assets/images/data.png",
                          ),
                          title: new Text(
                            'Data Structures',
                            style: GoogleFonts.bebasNeue(fontSize: 24),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 32, 50, 0),
                          child: Opacity(
                            opacity: 0.8,
                            child: Image.asset(
                              "assets/images/Cityscapes Downtown-4.png",
                              color: Color(0xFFFBC02D),
                              colorBlendMode: BlendMode.overlay,
                              height: 95,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Card(
                      elevation: 10,
                      color: Color(0xFFFBC02D),
                      margin: EdgeInsets.fromLTRB(19, 24, 19, 6),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 25.0, horizontal: 10),
                        child: ExpansionTile(
                          leading: Image.asset(
                            "assets/images/process.png",
                          ),
                          title: new Text(
                            'Greedy',
                            style: GoogleFonts.bebasNeue(fontSize: 24),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 32, 50, 0),
                          child: Opacity(
                            opacity: 0.8,
                            child: Image.asset(
                              "assets/images/Cityscapes Downtown-5.png",
                              color: Color(0xFFFBC02D),
                              colorBlendMode: BlendMode.overlay,
                              height: 95,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ]))
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
