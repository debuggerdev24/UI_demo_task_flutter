import 'package:go_router/go_router.dart';
import 'package:ui_demo_task/apps/mobile/screens/home_screen.dart';
import 'package:ui_demo_task/routes/routes.dart';

import '../apps/mobile/screens/splash_screen.dart';

class MobileAppRouter {
  static final GoRouter goRouter = GoRouter(
    initialLocation: MobileAppRoutes.splashScreen.path, //
    routes: routes,
  );

  static final List<RouteBase> routes = [
    GoRoute(
      path: MobileAppRoutes.splashScreen.path,
      name: MobileAppRoutes.splashScreen.name,
      builder: (context, state) {
        return SplashScreen();
      },
    ),

    GoRoute(
      path: MobileAppRoutes.homeScreen.path,
      name: MobileAppRoutes.homeScreen.name,
      builder: (context, state) {
        return HomeScreen();
      },
    ),
  ];
}
