import 'package:flutter/material.dart';

class Page7 extends StatefulWidget {
  const Page7({Key? key}) : super(key: key);

  @override
  _Page7State createState() => _Page7State();
}

class _Page7State extends State<Page7> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                const Text(
                  'Verify your phone number',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Convallis vestibulum augue massa sed aenean.',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 70,
                ),
                Card(
                  color: Color(0xFFF4F4F4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Container(
                    height: 70,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 40,
                          // color: Colors.purple,
                          decoration: const BoxDecoration(),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          '+1',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.arrow_drop_down),
                        SizedBox(width: 5),
                        const VerticalDivider(
                          thickness: 2,
                        ),
                        SizedBox(width: 10),
                        const Text(
                          '206-312-9956',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            // color: Colors.blue,
            height: size.height / 3.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF161616),
                    elevation: 0,
                    shadowColor: Colors.transparent,
                    fixedSize: Size(342, 54),
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}