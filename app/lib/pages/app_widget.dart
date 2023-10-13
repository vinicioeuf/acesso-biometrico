import 'package:app/pages/slash_page.dart';
import 'package:app/pages/home_page.dart';
import 'package:app/pages/login_page.dart';
import 'package:app/pages/register_page.dart';
import 'package:app/pages/profile_page.dart';
import 'package:app/pages/projects_page.dart';
import 'package:app/pages/agendamento_page.dart';
import 'package:app/pages/about_page.dart';
import 'package:app/pages/access_page.dart';
import 'package:app/pages/team_dev.dart';
import 'package:flutter/material.dart';


class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFFA7BF8B, {
          50: Color(0xFFA7BF8B),
          100: Color(0xFFA7BF8B),
          200: Color(0xFFA7BF8B),
          300: Color(0xFFA7BF8B),
          400: Color(0xFFA7BF8B),
          500: Color(0xFFA7BF8B),
          600: Color(0xFFA7BF8B),
          700: Color(0xFFA7BF8B),
          800: Color(0xFFA7BF8B),
          900: Color(0xFFA7BF8B),
        }),
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => const SplashPage(),
        '/login': (_) => const LoginPage(),
        '/register': (_) => const RegisterPage(),
        '/home': (_) => HomePage(),
        '/about': (_) => AboutPage(),
        '/agendamento': (_) => AgendamentoPage(),
        '/access': (_) => AccessPage(),
        '/projects': (_) => ProjectsPage(),
        '/profile': (_) => ProfilePage(),
        '/teamDev': (_) => TeamDevPage(),
      },
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
