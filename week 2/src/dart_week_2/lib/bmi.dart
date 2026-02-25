double hitungBMI(double berat, double tinggi) {
  return berat / (tinggi * tinggi);
}

String kategoriBMI(double bmi) { //melihat hasil perhitungan NMI masuk ke kategori apa
  if (bmi >= 25) {
    return 'Overweight';
  } else if (bmi >= 18.5) {
    return 'Normal';
  } else {
    return 'Underweight';
  }
}