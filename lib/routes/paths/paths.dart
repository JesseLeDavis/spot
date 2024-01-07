import 'package:flutter_project_template_firebase/routes/paths/path.dart';

class Paths {
  const Paths._();

  static HomePagePath get homePage => HomePagePath();
}

class HomePagePath extends Path {
  HomePagePath() : super('home-page');
}
