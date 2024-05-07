import 'package:flutter/material.dart';
import 'package:iraq_post/components/body.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: const Color(0xFF264980),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: IconButton(
            onPressed: () {},
            icon: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF516D99),
              ),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                'assets/notify.png',
                width: 24,
                height: 24,
              ),
            ),
          ),
        )
      ],
    );
  }
}
