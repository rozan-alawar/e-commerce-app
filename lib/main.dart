import 'package:ecommerce_app/core/routes/router.dart';
import 'package:ecommerce_app/core/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        title: 'E-commerce App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.home,
        onGenerateRoute: AppRoutes.onGenerateRoutes,
      ),
    );
  }
}
