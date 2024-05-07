import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.3,
          child: Stack(
            children: [
              Container(
                height: size.height * 0.3 - 27,
                decoration: const BoxDecoration(
                    color: Color(0xFF264980),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16))),
              ),
              Center(
                child: Positioned(
                    child: Container(
                  width: 343,
                  height: 228,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 375,
                        height: 228,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/banner 1.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 375,
                        height: 228,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/banner 2.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        width: 375,
                        height: 228,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/banner 3.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        width: 375,
                        height: 228,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/banner 4.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
              )
            ],
          ),
        )
      ],
    );
  }
}
