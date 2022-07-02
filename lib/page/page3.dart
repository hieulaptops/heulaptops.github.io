import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:testui/home_screen.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  static int initialPage = 0;
  int maximumPage = 321;

  final PageController _controller =
      PageController(initialPage: initialPage, viewportFraction: 0.8);

  double currentPageValue = 0;

  @override
  void initState() {
    _controller.addListener(() {
      setState(() {
        currentPageValue = _controller.page!;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Sally's music",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Text(
              "${currentPageValue.toInt() + 1} of $maximumPage",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                height: 1,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          // Expanded(
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: 3,
          //     itemBuilder: (c, i) {
          //       return Padding(
          //         padding: const EdgeInsets.only(left: 70, bottom: 320),
          //         child: Container(
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.all(
          //               Radius.circular(20),
          //             ),
          //             color: Colors.grey,
          //           ),
          //           width: 250,
          //           height: 100,
          //         ),
          //       );
          //     },
          //   ),
          // ),
          SizedBox(
            height: 340,
            child: PageView.builder(
              controller: _controller,
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemBuilder: (context, position) {
                if (position == 0 && currentPageValue == 0) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Container(
                        width: 267,
                        height: 340,
                        color: const Color(0xffA8A8A8),
                      ),
                    ),
                  );
                } else if (position == currentPageValue.floor()) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Container(
                        width: 267,
                        height: 340,
                        color: const Color(0xffA8A8A8),
                      ),
                    ),
                  );
                } else if (position == currentPageValue.floor() + 1) {
                  return Transform.scale(
                    scale: 0.9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Container(
                        width: 267,
                        height: 340,
                        color: const Color(0xffAD0D0D),
                      ),
                    ),
                  );
                } else {
                  return Transform.scale(
                    scale: 0.9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Container(
                        width: 267,
                        height: 340,
                        color: const Color(0xffAD0D0D),
                      ),
                    ),
                  );
                }
              },
              itemCount: maximumPage, // Can be null
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Sally's music",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Artist name",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Stack(
              children: [
                Container(
                  height: 6,
                  width: 342,
                  decoration: const BoxDecoration(
                      color: Color(0xFFC4C4C4),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                ),
                Container(
                  height: 6,
                  width: 100,
                  decoration: const BoxDecoration(
                      color: Color(0xff525252),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const SizedBox(
                        height: 80,
                      ),
                      Text("0:50"),
                      SizedBox(
                        width: 60,
                      ),
                      IconButton(
                        onPressed: (() {}),
                        icon: Icon(
                          Icons.fast_rewind_rounded,
                        ),
                      ),
                      IconButton(
                        onPressed: (() {}),
                        icon: Icon(Icons.pause),
                      ),
                      IconButton(
                        onPressed: (() {}),
                        icon: const Icon(
                          Icons.fast_forward_rounded,
                        ),
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                      Text("6:50"),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
