import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:testui/home_screen.dart';

class Page5 extends StatefulWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back(result: const Homescreen());
                    },
                    icon: Icon(Icons.arrow_back_ios_new),
                  ),
                  Spacer(),
                  const Center(
                    child: Text(
                      "Therapist",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.filter_list,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: SizedBox(
                width: 343,
                height: 170,
                // color: AppColors.grey,
                child: Stack(
                  children: [
                    PageView.builder(
                      itemCount: 4,
                      physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      onPageChanged: (index) {
                        setState(() {
                          currentPage = index;
                        });
                      },
                      itemBuilder: (c, i) {
                        return Container(
                          width: 343,
                          height: 170,
                          color: Color.fromARGB(255, 133, 24, 24),
                        );
                      },
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              4,
                              (index) => buildDot(index == currentPage),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 11,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 0, top: 30),
              child: Row(
                children: const [
                  Text(
                    "Nearby Therapist",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                  Spacer(),
                  Text(
                    "See more",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  var kAnimationDuration = const Duration(milliseconds: 200);
  var kPrimaryColor = Colors.black;
  AnimatedContainer buildDot(bool isCurrent) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isCurrent ? const Color(0xff525252) : const Color(0xffC4C4C4),
      ),
    );
  }
}
