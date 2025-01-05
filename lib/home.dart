import 'package:flutter/material.dart';
import 'package:home_lh/components/home_banner.dart';
import 'package:home_lh/components/home_mission.dart';
import 'package:home_lh/components/navbar.dart';
import 'package:home_lh/components/whats_new.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color(0xFFf6f6f6),
        appBar: MyNavbar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HomeMission(),
            SizedBox(height: 18),
            WhatsNew(),
            SizedBox(height: 18),
            HomeBanner()
          ],
        ));
  }
}
