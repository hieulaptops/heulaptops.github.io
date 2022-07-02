import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class Page10 extends StatefulWidget {
  const Page10({Key? key}) : super(key: key);

  @override
  State<Page10> createState() => _Page10State();
}

class _Page10State extends State<Page10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/model.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Spacer(),
                  SvgPicture.asset(
                    "assets/images/more_horiz.svg",
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 22,
                  ),
                ],
              ),
              const SizedBox(
                height: 59,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 28),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/images/more_horiz.svg",
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(height: 8),
                      const Text(
                        '12',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 32),
                      SvgPicture.asset(
                        "assets/images/more_horiz.svg",
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(height: 8),
                      const Text(
                        '412',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 32),
                      SvgPicture.asset(
                        "assets/images/more_horiz.svg",
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(height: 8),
                      const Text(
                        '12',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),

              /// ClipRect would also work here
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    width: 343,
                    height: 190,
                    padding: const EdgeInsets.only(
                        left: 23, right: 30, top: 20, bottom: 15),
                    decoration: BoxDecoration(
                      color: Color(0x66C4C4C4),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Model name",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10),
                        const Expanded(
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed amet vel cursus at. Sit consectetur euismod dolor porttitor enim id tempus.",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 90,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  30,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Follow",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  SvgPicture.asset(
                                    "assets/images/more_horiz.svg",
                                    width: 24,
                                    height: 24,
                                  ),
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
              SizedBox(
                height: 41,
              )
            ],
          ),
        ),
      ),
    );
  }
}
