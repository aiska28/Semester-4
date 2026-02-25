class KonversiMataUang { //mengelompokkan data dan fungsi
  // static : bisa dipanggil tanpa membuat objek
  // const : nilainya tetap (tidak bisa diubah)
  static const double kursUSD = 15500; 
  static const double kursEUR = 17000;
  static const double kursSGD = 11500;

  // double : karena nilai kurs bisa desimal
  static double keUSD(double rupiah) => rupiah / kursUSD;
  static double keEUR(double rupiah) => rupiah / kursEUR;
  static double keSGD(double rupiah) => rupiah / kursSGD;
}