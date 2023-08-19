import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:multiline_add_favourite/Favriute_list.dart';
import 'package:multiline_add_favourite/list_provider.dart';
import 'package:provider/provider.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MultiProvider List'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return FavoriteList();
                }));
              },
              icon: Icon(Icons.next_plan))
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Consumer<ListProvider>(
          builder: (context, fav, child) => ListTile(
            onTap: () {
              if (fav.selectedIndex.contains(index)) {
                fav.removeFav(index);
              } else {
                fav.addFavorite(index);
              }
              ;
            },
            leading: const Text('item 1'),
            trailing: fav.selectedIndex.contains(index)
                ? const Icon(Icons.favorite)
                : const Icon(Icons.favorite_border),
          ),
        ),
      ),
    );
  }
}
