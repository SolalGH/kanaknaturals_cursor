import 'package:flutter/material.dart';
import 'package:kanaknaturals_cursor/home_page.dart';
import 'package:kanaknaturals_cursor/utilities/my_active_provider.dart';
import 'package:kanaknaturals_cursor/utilities/my_passive_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MyActiveProvider()),
        ChangeNotifierProvider(create: (context) => MyPassiveProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
