import 'package:flutter_project_template_firebase/features/home_page/home_page.dart';
import 'package:flutter_project_template_firebase/routes/paths/paths.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> appRoutes() {
  return [
    GoRoute(
      path: Paths.homePage.name,
      name: Paths.homePage.name,
      builder: (context, state) => const HomePage(),
    ),
  ];
}
