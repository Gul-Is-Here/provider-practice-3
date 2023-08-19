import 'package:flutter/material.dart';

class ListProvider extends ChangeNotifier {
  List<int> _selectedIndex = [];

  List<int> get selectedIndex => _selectedIndex;
  void addFavorite(int index) {
    _selectedIndex.add(index);

    notifyListeners();
  }

  void removeFav(int index) {
    _selectedIndex.remove(index);
    notifyListeners();
  }
}
