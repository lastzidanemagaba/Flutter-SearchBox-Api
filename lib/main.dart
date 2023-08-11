import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_rest_api/pages/home_page.dart';
import 'package:provider_rest_api/providers/pets_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PetsProvider(),
      child: MaterialApp(
        title: 'Search From API',
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    );
  }
}
