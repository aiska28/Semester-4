import 'package:dart_week_2/bmi.dart' as dart_week_2;

void main() {
  //deklarasi variabel
  double berat = 50;
  double tinggi = 1.57;

  double bmi = dart_week_2.hitungBMI(berat, tinggi);  // perhitungan BMI, hasil dikembalikan dalam bentuk double
  String kategori = dart_week_2.kategoriBMI(bmi); //menentukan jenis kategori

  print('==== PROGRAM BMI ====');
  print('BMI: ${bmi.toStringAsFixed(2)}'); // menampilkan output
  print('Kategori: $kategori'); // menampilkan output
}