import 'package:app/ui/code.dart';
import 'package:app/ui/desc.dart';
import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:app/code/cpp.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CodeBD extends StatefulWidget {
  String title;
  CodeBD(this.title, {Key key}) : super(key: key);

  @override
  _CodeBDState createState() => _CodeBDState();
}

class _CodeBDState extends State<CodeBD> {
  @override
  Widget build(BuildContext context) {
    // ScreenUtil.init(
    //   BoxConstraints(minHeight: 1440, minWidth: 720),
    // );
    return DefaultTabController(
      length: 3,
      child: BackdropScaffold(
        frontLayerBorderRadius: BorderRadius.only(
            topLeft: Radius.circular(24), topRight: Radius.circular(24)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.content_copy),
            onPressed: () {
              Clipboard.setData(ClipboardData(text: CPP.code[widget.title]));
              Fluttertoast.showToast(
                  msg: "Copied code to clipboard", fontSize: 16.0);
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
        backLayer: Code(widget: widget),
        frontLayer: Description(widget: widget),
      ),
    );
  }
}
