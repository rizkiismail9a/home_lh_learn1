import 'package:flutter/material.dart';
import 'package:home_lh/components/home_banner.dart';
import 'package:home_lh/components/home_mission.dart';
import 'package:home_lh/components/jalin_kerjasama.dart';
import 'package:home_lh/components/navbar.dart';
import 'package:home_lh/components/whats_new.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _targetKey = GlobalKey();

  void scrollToTarget() {
    final RenderObject? renderObject =
        _targetKey.currentContext?.findRenderObject();

    if (renderObject != null) {
      final position = renderObject.getTransformTo(null).getTranslation();
      _scrollController.animateTo(position.y,
          duration: const Duration(milliseconds: 500),
          curve: Curves.elasticInOut);
    }
  }

  String getMessage() {
    return "Hello from Flutter!";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFf6f6f6),
        appBar: const MyNavbar(),
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HomeMission(
                jalinKerjaSama: scrollToTarget,
              ),
              const SizedBox(height: 18),
              const WhatsNew(),
              const SizedBox(height: 18),
              const HomeBanner(),
              const SizedBox(height: 18),
              JalinKerjasama(
                key: _targetKey,
              )
            ],
          ),
        ));
  }
}
