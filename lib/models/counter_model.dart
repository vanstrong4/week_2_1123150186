import 'package:flutter/material.dart';
class CounterModel extends ChangeNotifier{
  int _angka = 0;
  get angka => _angka;

  void increment(){
    _angka++;
    notifyListeners();
  }

  void kurang(){
    if(_angka > 0){
      _angka--;
      notifyListeners();
    }
  }
}