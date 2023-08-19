import "package:flutter/material.dart";
import "package:multiline_add_favourite/list_provider.dart";
import "package:multiline_add_favourite/list_screen.dart";
import "package:provider/provider.dart";

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
          create: (context) => ListProvider(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.pinkAccent, primarySwatch: Colors.amber),
        home: const ListScreen(),
      ),
    );
  }
}
