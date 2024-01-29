import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teacherstools/Screen/ToolsPage/tools_page.dart';

void main() {
  runApp(const TeachersToolsPage());
}

class TeachersToolsPage extends StatelessWidget {
  const TeachersToolsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToolsPage(),
    );
  }
}
