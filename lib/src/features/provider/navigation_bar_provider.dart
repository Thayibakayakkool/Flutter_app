import 'package:flutter/material.dart';

class NavigationBarProvider with ChangeNotifier{
  SelectedIndex _selectedIndex = SelectedIndex(index: 0);

  void changeSelectedIndex(int index){
    _selectedIndex = SelectedIndex(index: index);
    notifyListeners();
  }

  SelectedIndex get selectedIndex => _selectedIndex;
}
class SelectedIndex {
  final int index;

  SelectedIndex({required this.index});
}