import 'package:flutter/material.dart';
import 'package:flutter_login_navigation_route/pages/home_page.dart';
import 'package:flutter_login_navigation_route/pages/product_page.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const home = '/';
  static const product = '/product-details';
}

class RouterConfiguration {
  static final router = GoRouter(
    routes: [
      GoRoute(
          path: Routes.home,
          name: Routes.home,
          pageBuilder: (context, state) => MaterialPage(child: HomePage())),
      GoRoute(
          path: Routes.product,
          name: Routes.product,
          pageBuilder: (context, state) =>
              const MaterialPage(child: ProductPage())),
    ],
  );
}
