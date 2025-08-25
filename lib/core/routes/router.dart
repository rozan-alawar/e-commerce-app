import 'package:ecommerce_app/core/routes/routes.dart';
import 'package:ecommerce_app/models/user.dart';
import 'package:ecommerce_app/view/screens/freelancer_deatils.dart';
import 'package:ecommerce_app/view/screens/home_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return _materialRoute(const HomeScreen());

      case Routes.freelancerDetails:
        User user = settings.arguments as User;
        return _materialRoute(FreelancerDeatils(user: user));

      default:
        return _materialRoute(Text('No route defined for ${settings.name}'));
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
