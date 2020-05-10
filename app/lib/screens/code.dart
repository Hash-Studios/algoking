import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CodeBD extends StatefulWidget {
  String title;
  CodeBD(this.title, {Key key}) : super(key: key);

  @override
  _CodeBDState createState() => _CodeBDState();
}

class _CodeBDState extends State<CodeBD> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 720, height: 1440, allowFontScaling: true);
    return DefaultTabController(
      length: 3,
      child: BackdropScaffold(
        frontLayerBorderRadius: BorderRadius.only(
            topLeft: Radius.circular(24), topRight: Radius.circular(24)),
        actions: <Widget>[
          BackdropToggleButton(
            icon: AnimatedIcons.view_list,
          ),
        ],
        headerHeight: 100.h,
        iconPosition: BackdropIconPosition.none,
        title: Text(widget.title.replaceAll("_", " ")),
        backLayer: Scaffold(
          appBar: AppBar(
            leading: Container(),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.code),
              ),
              Tab(
                icon: Icon(Icons.pages),
              ),
              Tab(
                icon: Icon(Icons.folder),
              ),
            ]),
          ),
          body: TabBarView(children: [
            new Container(
              color: Colors.redAccent,
              child: Center(
                child: Text(
                  'C++',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            new Container(
              color: Colors.greenAccent,
              child: Center(
                child: Text(
                  'Python',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            new Container(
              color: Colors.blueAccent,
              child: Center(
                child: Text(
                  'Dart',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ]),
        ),
        frontLayer: Stack(
          children: <Widget>[
            Positioned(
              bottom: 40.h,
              left: 35.w,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Color(0x33000000),
                        blurRadius: 20,
                        offset: Offset(0, 25),
                        spreadRadius: -10)
                  ],
                ),
                child: SizedBox(
                  height: 1150.h,
                  width: 650.w,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                        style: GoogleFonts.roboto(fontSize: 18)),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 30.h,
              left: 290.w,
              child: SizedBox(
                height: 1300.h,
                width: 720.w,
                child: Container(
                  child: Text(
                    "Description",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
