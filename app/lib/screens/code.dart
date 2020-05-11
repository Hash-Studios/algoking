import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:app/desc/desc.dart';
import 'package:app/code/python.dart';
import 'package:app/code/cpp.dart';
import 'package:app/code/dart.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CodeBD extends StatefulWidget {
  String title;
  CodeBD(this.title, {Key key}) : super(key: key);

  @override
  _CodeBDState createState() => _CodeBDState();
}

class _CodeBDState extends State<CodeBD> {
  String code = """
Live Demo

#include <iostream> 
using namespace std;
 
class Shape {
   protected:
      int width, height;
      
   public:
      Shape( int a = 0, int b = 0){
         width = a;
         height = b;
      }
      int area() {
         cout << "Parent class area :" <<endl;
         return 0;
      }
};
class Rectangle: public Shape {
   public:
      Rectangle( int a = 0, int b = 0):Shape(a, b) { }
      
      int area () { 
         cout << "Rectangle class area :" <<endl;
         return (width * height); 
      }
};

class Triangle: public Shape {
   public:
      Triangle( int a = 0, int b = 0):Shape(a, b) { }
      
      int area () { 
         cout << "Triangle class area :" <<endl;
         return (width * height / 2); 
      }
};

// Main function for the program
int main() {
   Shape *shape;
   Rectangle rec(10,7);
   Triangle  tri(10,5);

   // store the address of Rectangle
   shape = &rec;
   
   // call rectangle area.
   shape->area();

   // store the address of Triangle
   shape = &tri;
   
   // call triangle area.
   shape->area();
   
   return 0;
}
""";
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 720, height: 1440, allowFontScaling: true);
    return DefaultTabController(
      length: 3,
      child: BackdropScaffold(
        frontLayerBorderRadius: BorderRadius.only(
            topLeft: Radius.circular(24), topRight: Radius.circular(24)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.content_copy),
            onPressed: () {
              ClipboardManager.copyToClipBoard(CPP.code[widget.title])
                  .then((result) {
                Fluttertoast.showToast(
                    msg: "Copied code to clipboard",
                    // toastLength: Toast.LENGTH_SHORT,
                    // gravity: ToastGravity.CENTER,
                    // timeInSecForIosWeb: 1,
                    // backgroundColor: Colors.red,
                    // textColor: Colors.white,
                    fontSize: 16.0);
              });
            },
          ),
          BackdropToggleButton(
            icon: AnimatedIcons.view_list,
          ),
        ],
        headerHeight: 100.h,
        iconPosition: BackdropIconPosition.none,
        title: Text(
          widget.title.replaceAll("_", " "),
          style: GoogleFonts.abrilFatface(),
        ),
        backLayer: Column(
          children: <Widget>[
            Expanded(
              flex: 22,
              child: TabBarView(children: [
                new Container(
                  child: SyntaxView(
                    code: CPP.code[widget.title],
                    syntax: Syntax.DART,
                    syntaxTheme: SyntaxTheme.gravityLight(),
                    withZoom: true,
                    withLinesCount: true,
                  ),
                ),
                new Container(
                  child: SyntaxView(
                    code: PYTHON.code[widget.title],
                    syntax: Syntax.DART,
                    syntaxTheme: SyntaxTheme.gravityLight(),
                    withZoom: true,
                    withLinesCount: true,
                  ),
                ),
                new Container(
                  child: SyntaxView(
                    code: DART.code[widget.title],
                    syntax: Syntax.DART,
                    syntaxTheme: SyntaxTheme.gravityLight(),
                    withZoom: true,
                    withLinesCount: true,
                  ),
                ),
              ]),
            ),
            TabBar(
              indicatorColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(
                  icon: Icon(FontAwesomeIcons.plus),
                  text: "C++",
                ),
                Tab(
                  icon: Icon(FontAwesomeIcons.python),
                  text: "Python",
                ),
                Tab(
                  icon: Icon(FontAwesomeIcons.bullseye),
                  text: "Dart",
                ),
              ],
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.amber,
              ),
            )
          ],
        ),
        frontLayer: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24)),
          child: Container(
            child: Stack(
              children: <Widget>[
                Positioned(
                  bottom: 40.h,
                  left: 35.w,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      gradient: LinearGradient(colors: [
                        Color(0xFFFCA91E),
                        Color(0xFFFBC02D),
                        Color(0xFFFFC228),
                      ]),
                      // boxShadow: [
                      //   BoxShadow(
                      //       color: Color(0x33000000),
                      //       blurRadius: 20,
                      //       offset: Offset(0, 25),
                      //       spreadRadius: -10)
                      // ],
                    ),
                    child: SizedBox(
                      height: 1150.h,
                      width: 650.w,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Scrollbar(
                          child: SingleChildScrollView(
                            child: Text(Desc.code[widget.title],
                                style: GoogleFonts.roboto(fontSize: 18)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 35.h,
                  child: SizedBox(
                    height: 1230.h,
                    width: 720.w,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Description",
                              style: GoogleFonts.bebasNeue(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                          // FloatingActionButton.extended(
                          //   label: Text("CODE"),
                          //   onPressed: null,
                          //   icon: Icon(Icons.code),
                          // )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
