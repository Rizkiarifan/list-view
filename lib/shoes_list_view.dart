import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:yanuba_listview/merk.dart';

import 'theme_provider.dart';

class ShoesListView extends StatelessWidget {
  final List merk = [
    "Adidas",
    "League",
    "Nike",
    "Convers",
    "Parka",
    "New Balance",
    "Reebok",
    "Vans",
    "Puma",
    "Reebok"
  ];
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final provider = Provider.of<ThemeProvider>(context, listen: false);

    return Scaffold(
        appBar: AppBar(
          actions: [
            Switch.adaptive(
              activeColor: Colors.green,
              inactiveTrackColor: Colors.grey,
              value: themeProvider.isDarkMode,
              onChanged: (value) {
                provider.toggleTheme(value);
              },
            ),
          ],
          title: Text("ListViewShoes"),
        ),
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Merk()));
                },
                child: Card(
                    child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(merk[index], style: TextStyle(fontSize: 28)),
                )));
          },
          itemCount: merk.length,
        ));
  }
}
