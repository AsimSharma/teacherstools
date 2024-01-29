import 'package:get/get.dart';
import 'package:teacherstools/Screen/ToolsPage/tools_page.dart';
import 'package:teacherstools/app/routes/route_name_managers.dart';

class Routes {
  static final routes = [
    GetPage(name: RouteNames.SPLASH_SCREEN, page: () => const ToolsPage()),
  ];
}
