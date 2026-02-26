class CounterModel {
  int _angka = 0;
  get angka => _angka;

  void increment(){
    _angka++;
  }

  void kurang(){
    if(_angka > 0){
      _angka--;
    }
  }
}