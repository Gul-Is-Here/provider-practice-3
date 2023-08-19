import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'list_provider.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ListProvider>(context, listen: false);
    return Scaffold(
      body: ListView.builder(
        itemCount: provider.selectedIndex.length,
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
