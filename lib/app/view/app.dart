import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_template_firebase/features/home_page/cubit/home_cubit.dart';
import 'package:flutter_project_template_firebase/infrastructure/config/flavor.dart';
import 'package:flutter_project_template_firebase/infrastructure/injection/injection.dart';
import 'package:flutter_project_template_firebase/routes/router.dart';
import 'package:flutter_project_template_firebase/shared/themes/color_themes.dart';
import 'package:flutter_project_template_firebase/shared/themes/text_themes.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  const App({Key? key, required this.flavor}) : super(key: key);

  final Flavor flavor;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<HomeCubit>()),
      ],
      child: _App(flavor: flavor),
    );
  }
}

class _App extends StatefulWidget {
  const _App({Key? key, required this.flavor}) : super(key: key);

  final Flavor flavor;

  @override
  State<_App> createState() => _AppState();
}

class _AppState extends State<_App> {
  late final GoRouter _goRouter;

  @override
  void initState() {
    super.initState();

    _goRouter = getIt<AppRouter>().router;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: ColorThemes.spotsBlack,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: ColorThemes.spotsBlack,
        ),
        fontFamily: GoogleFonts.inter().fontFamily,
        textTheme: TextTheme(
          displayLarge: TextThemes.pureWhite.largeTitle,
          headlineLarge: TextThemes.pureWhite.title1,
          headlineMedium: TextThemes.pureWhite.title2,
          headlineSmall: TextThemes.pureWhite.headline,
          titleMedium: TextThemes.pureWhite.body,
          bodyLarge: TextThemes.pureWhite.body,
          labelMedium: TextThemes.pureWhite.footnote,
        ),
      ),
      title: 'Spot',
      key: const Key(''),
      debugShowCheckedModeBanner: false,
      routerConfig: _goRouter,
    );
  }
}

extension ThemeX on BuildContext {
  ThemeData get theme => Theme.of(this);
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}
