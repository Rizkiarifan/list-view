import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yanuba_listview/shoes_list_view.dart';
import 'package:yanuba_listview/theme_provider.dart';
import 'package:yanuba_listview/my_theme.dart';

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
          create: (context) => ThemeProvider(),
        ),
      ],
      builder: (context, index) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          title: "ListShop",
          themeMode: themeProvider.themeMode,
          theme: MyTheme.lightTheme,
          darkTheme: MyTheme.darkTheme,
          home: ShoesListView(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
