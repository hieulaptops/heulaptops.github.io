import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:testui/page/page1.dart';
import 'package:testui/itempopular.dart';
import 'package:testui/page/page2.dart';

import 'package:testui/page/page3.dart';
import 'package:testui/page/page4.dart';
import 'package:testui/page/page5.dart';
import 'package:testui/page/page6.dart';
import 'package:testui/page/page7.dart';

import 'page/page10.dart';
import 'page/page8.dart';
import 'page/page9.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter UI Kit"),
      ),
      body: Container(
        child: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.65, // Chỉnh độ dài của các item
            crossAxisCount: 2, // Số cột item
            crossAxisSpacing: 16, // khoảng cách cột
            mainAxisSpacing: 50, // khoảng cách hàng
          ),
          itemCount: listItemPopular.length, //  Số item
          itemBuilder: (context, index) {
            return _itemsPopular(listItemPopular[index], index);
          },
        ),
      ),
    );
  }

  Widget _itemsPopular(ItemsPopular itemsPopular, int index) {
    return GestureDetector(
        onTap: () {
          if (index == 0) {
            Get.to(const Page1());
          } else if (index == 1) {
            Get.to(const Page2());
          } else if (index == 2) {
            Get.to(const Page3());
          } else if (index == 3) {
            Get.to(const Page4());
          } else if (index == 4) {
            Get.to(const Page5());
          } else if (index == 5) {
            Get.to(const Page6());
          } else if (index == 6) {
            Get.to(const Page7());
          } else if (index == 7) {
            Get.to(const Page8());
          } else if (index == 8) {
            Get.to(const Page9());
          } else if (index == 9) {
            Get.to(const Page10());
          } //else if (index == 10) {
          //   Get.to(const Page11());
          // } else if (index == 11) {
          //   Get.to(const Page12());
          // } else if (index == 12) {
          //   Get.to(const Page13());
          // } else if (index == 13) {
          //   Get.to(const Page14());
          // }
        },
        child: Column(
          children: [
            Expanded(
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      itemsPopular.urlPhoto,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
