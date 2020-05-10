import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:app/desc/desc.dart';
import 'package:app/code/python.dart';
import 'package:app/code/cpp.dart';
import 'package:app/code/dart.dart';

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
          BackdropToggleButton(
            icon: AnimatedIcons.view_list,
          ),
        ],
        headerHeight: 100.h,
        iconPosition: BackdropIconPosition.none,
        title: Text(widget.title.replaceAll("_", " ")),
        backLayer: Column(
          children: <Widget>[
            TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  icon: Icon(Icons.code),
                ),
                Tab(
                  icon: Icon(Icons.pages),
                ),
                Tab(
                  icon: Icon(Icons.folder),
                ),
              ],
            ),
            Expanded(
              flex: 13,
              child: TabBarView(children: [
                new Container(
                  color: Colors.redAccent,
                  child: SyntaxView(
                    code: CPP.code[widget.title],
                    syntax: Syntax.DART,
                    syntaxTheme: SyntaxTheme.dracula(),
                    withZoom: true,
                    withLinesCount: true,
                  ),
                ),
                new Container(
                  color: Colors.greenAccent,
                  child: SyntaxView(
                    code: PYTHON.code[widget.title],
                    syntax: Syntax.DART,
                    syntaxTheme: SyntaxTheme.dracula(),
                    withZoom: true,
                    withLinesCount: true,
                  ),
                ),
                new Container(
                  color: Colors.blueAccent,
                  child: SyntaxView(
                    code: DART.code[widget.title],
                    syntax: Syntax.DART,
                    syntaxTheme: SyntaxTheme.dracula(),
                    withZoom: true,
                    withLinesCount: true,
                  ),
                ),
              ]),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blueGrey[900],
              ),
            )
          ],
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
                height: 1300.h,
                width: 720.w,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    child: Text(
                      "Description",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
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
