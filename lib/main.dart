import 'package:flutter/material.dart';
import 'package:flutter_app/src/features/provider/navigation_bar_provider.dart';
import 'package:flutter_app/src/features/screens/navigation_bar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NavigationBarProvider(),
      child: const MaterialApp(
        title: 'Flutter App',
        debugShowCheckedModeBanner: false,
        home: NavigationBarWidget(),
      ),
    );
  }
}

