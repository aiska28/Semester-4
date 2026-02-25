import 'package:dart_week_2/konversi_mata_uang.dart';

void main() {
  double rupiah = 100000; 

  //menampilakn
  print('Rupiah: Rp$rupiah');
  print('USD: ${KonversiMataUang.keUSD(rupiah).toStringAsFixed(2)}');
  print('EUR: ${KonversiMataUang.keEUR(rupiah).toStringAsFixed(2)}');
  print('SGD: ${KonversiMataUang.keSGD(rupiah).toStringAsFixed(2)}');
}