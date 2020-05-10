import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'screens/code.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        color: Colors.grey,
        home: MyApp());
  }
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
  Map database = {
    "Graph": ["Depth_First_Search", "Breadth_First_Search"],
    "Search": ["Binary_Search", "Linear_Search"],
    "Sort": [
      "Bubble_Sort",
      "Heap_Sort",
      "Insertion_Sort",
      "Merge_Sort",
      "Quick_Sort",
      "Selection_Sort"
    ],
    "Maths": [
      "Even_Odd",
      "Factorial",
      "Fibonacci",
      "Greatest_Common_Divisor",
      "Lowest_Common_Multiple",
      "Max_Pairwise_Product",
      "Prime_Numbers",
      "Swap_Numbers"
    ],
    "Data Structures": [
      "AVL_Tree",
      "Array_Methods",
      "Binary_Search_Tree",
      "Huffman_Tree",
      "Infix_to_Postfix",
      "Infix_to_Prefix",
      "Intersect_Arrays",
      "Postfix_to_Infix",
      "Prefix_to_Infix",
      "Priority_Queue",
      "Queue_using_Array",
      "Queue_using_Linked_List",
      "Queue_using_Stacks",
      "Reverse_Linked_List",
      "Stack_using_Array",
      "Stack_using_Linked_List",
      "Stack_using_Queues",
      "Union_Array",
      "Union_Sorted_Array"
    ],
    "Greedy": ["Knapsack_Problem"],
  };
  List numbers = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
  ];
  void changeIsOpen(int index) {
    setState(() {
      isOpen[index] = isOpen[index] ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, height: 1440, width: 720, allowFontScaling: true);
    numbers.shuffle();
    return Scaffold(
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
              expandedHeight: 495.0.h,
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
                              width: 60.w,
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
              return Column(
                children: [
                  // Padding(padding: EdgeInsets.only(top: 20)),
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(colors: [
                            Color(0xFFFCA91E),
                            Color(0xFFFBC02D),
                            Color(0xFFFFC228),
                          ]),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0x33000000),
                                blurRadius: 20,
                                offset: Offset(0, 25),
                                spreadRadius: -10)
                          ],
                        ),
                        margin: EdgeInsets.fromLTRB(19, 10, 19, 6),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 17, horizontal: 14.0),
                              child: Image.asset(
                                leadingIcons[index],
                                height: 98.h,
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
                            padding: const EdgeInsets.fromLTRB(0, 19, 50, 0),
                            child: Opacity(
                              opacity: 0.8,
                              child: Image.asset(
                                trailingIcons[index],
                                // color: Color(0xFFFBC02D),
                                // colorBlendMode: BlendMode.overlay,
                                height: 170.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(19, 10, 19, 6),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: MaterialButton(
                            child: SizedBox(height: 161.h, width: 600.w),
                            onPressed: () {
                              HapticFeedback.vibrate();
                              changeIsOpen(index);
                              // print(isOpen);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  isOpen[index]
                      ? SizedBox(
                          height: 377.h,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: database[listText[index]].length,
                              itemBuilder: (BuildContext context, int index2) {
                                return Stack(
                                  children: [
                                    Container(
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
                                      margin: EdgeInsets.fromLTRB(19, 10, 0, 6),
                                      child: Container(
                                        width: 290.w,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 17,
                                                      horizontal: 14.0),
                                              child: Image.asset(
                                                "assets/images/Big Shoes Happy Costumer-${numbers[index2]}.png",
                                                height: 134.h,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      8.0, 0, 8, 0),
                                              child: Text(
                                                database[listText[index]]
                                                        [index2]
                                                    .toString()
                                                    .replaceAll("_", " "),
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.abrilFatface(
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          19, 10, 19, 6),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(24),
                                        child: MaterialButton(
                                          child: SizedBox(
                                              height: 359.h, width: 232.w),
                                          onPressed: () {
                                            HapticFeedback.vibrate();
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return CodeBD(
                                                  database[listText[index]]
                                                          [index2]
                                                      .toString());
                                            }));
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              }),
                        )
                      : Container()
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
    );
  }
}
