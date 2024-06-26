import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  List pages = [const Home(), const Profile()];

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: tabController,
          tabs: const [
            Text(
              '#Flutter',
              style: TextStyle(color: Colors.blue),
            ),
            Text(
              '#Rust',
              style: TextStyle(color: Colors.red),
            ),
            Text(
              '#Dart',
              style: TextStyle(color: Colors.green),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              Container(
                height: 200,
                width: 100,
                color: Colors.blue,
                child: Text(
                  'GOOGLE Fonts Example',
                  style: GoogleFonts.aboreto(fontSize: 30),
                ),
              ),
              Container(
                height: 200,
                width: 150,
                color: Colors.red,
              ),
              Container(
                height: 200,
                width: 150,
                color: Colors.green,
              ),
            ],
          ),
        )
      ],
    );
  }
}
