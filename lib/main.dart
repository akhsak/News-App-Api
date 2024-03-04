import 'package:flutter/material.dart';
import 'package:newsapp_api/controller/category_provider.dart';
import 'package:newsapp_api/controller/home_provider.dart';
import 'package:newsapp_api/view/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => appBarProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CategoryListProvider(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
