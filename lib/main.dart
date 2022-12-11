import 'package:flutter/material.dart';
import 'package:flutter_demo1/core/store.dart';
import 'package:flutter_demo1/pages/cart_page.dart';
import 'package:flutter_demo1/pages/login_page.dart';
import 'package:flutter_demo1/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'pages/home_page.dart';
import 'widgets/themes.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      routeInformationParser: VxInformationParser(),
      routerDelegate: VxNavigator(
        routes: {
          "/": (_, __) => MaterialPage(child: LoginPage()),
          MyRoutes.homeRoute: (_, __) => MaterialPage(child: HomePage()),
          MyRoutes.loginRoute: (_, __) => MaterialPage(child: LoginPage()),
          MyRoutes.cartRoute: (_, __) => MaterialPage(child: CartPage()),
        },
      ),
    );
  }
}
