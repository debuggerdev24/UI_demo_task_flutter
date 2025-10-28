enum MobileAppRoutes { splashScreen, homeScreen }

extension AppRouteExtension on MobileAppRoutes {
  String get path => this == MobileAppRoutes.homeScreen ? "/" : "/$name";
}
