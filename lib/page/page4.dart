import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:testui/home_screen.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 400,
            height: 844,
            color: Colors.black,
            child: Stack(
              children: [
                // Padding(
                //   padding:
                //       const EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
                //   child: Container(
                //     width: 400,
                //     height: 844,
                //     color: Colors.black,
                //   ),
                // ),
                Image.network(
                    "https://github.com/bukunmialuko/flutter_ui_kit_obkm/blob/main/assets/png/lady_pg4.png?raw=true"),
                Row(
                  children: [
                    const SizedBox(
                      height: 130,
                      width: 25,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 170, 164, 164),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: IconButton(
                        onPressed: (() {
                          Get.back(result: const Homescreen());
                        }),
                        icon: const Icon(Icons.arrow_back_ios_new),
                      ),
                    ),
                    const SizedBox(
                      width: 250,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 170, 164, 164),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: IconButton(
                        onPressed: (() {
                          Get.back(result: const Homescreen());
                        }),
                        icon: const Icon(Icons.more_horiz),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 400, left: 50),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: const [
                              Text(
                                "Songs",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                              Text(
                                "56",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Column(
                            children: const [
                              Text(
                                "Followers",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                              Text(
                                "7556",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Column(
                            children: const [
                              Text(
                                "Following",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                              Text(
                                "390",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Text(
                            "Popular",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),

//////
                      ///
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Container(
                          child: ListView.separated(
                              physics: const BouncingScrollPhysics(
                                  parent: AlwaysScrollableScrollPhysics()),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: ((context, index) {
                                return Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          width: 150,
                                          height: 150,
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 192, 188, 188),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Container(
                                            width: 120,
                                            height: 120,
                                            decoration: const BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 77, 72, 72),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          right: 0,
                                          bottom: 0,
                                          child: Container(
                                            width: 25,
                                            height: 25,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                              color: Colors.blue,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "Album name",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                    ),
                                  ],
                                );
                              }),
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      const SizedBox(
                                        width: 16,
                                      ),
                              itemCount: 5),
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.only(bottom: 80, right: 200),
                        child: Text(
                          "Singles",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
