import 'package:flutter/material.dart';
import 'package:lapepenew/desktop_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      backgroundColor: Colors.transparent,
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar,
      body: DesktopHome(appBarHeight: appBar.preferredSize.height),
    );
  }
}
