import 'package:flutter/material.dart';
import 'package:flutter_login_navigation_route/pages/home_page.dart';
import 'package:flutter_login_navigation_route/pages/login.dart';
import 'package:flutter_login_navigation_route/pages/product_page.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const home = '/';
  static const product = '/product-details';
  static const login = '/login';
}

class RouterConfiguration {
  static bool isLoggedIn = false;
  static String userName = 'Hasib';
  static String password = '12345';
  static final router = GoRouter(
    redirect: (context, state) {
      if(isLoggedIn){
        return state.fullPath;
      }
      else{
        return Routes.login;
      }
    },
    routes: [
      GoRoute(
          path: Routes.home,
          name: Routes.home,
          pageBuilder: (context, state) =>
              const MaterialPage(child: HomePage())),
      GoRoute(
          path: Routes.product,
          name: Routes.product,
          pageBuilder: (context, state) => MaterialPage(
                  child: ProductPage(
                object: state.extra as Map<String, String>,
              ))),
      GoRoute(
          path: Routes.login,
          name: Routes.login,
          pageBuilder: (context, state) => MaterialPage(child: LoginPage())),
    ],
  );
}
