class UnitConverter {

  // MAP FAKTOR KONVERSI
  // menggunakan final agar tidak bisa diubah
  static final Map<String, double> panjang = { // digunakan untuk menyimpan pasangan
    "mm": 0.001,
    "cm": 0.01,
    "m": 1,
    "km": 1000,
    "in": 0.0254
  };

  static final Map<String, double> massa = {
    "mg": 0.000001,
    "g": 0.001,
    "kg": 1,
    "ons": 0.1,
    "ton": 1000
  };

  static final Map<String, double> volume = {
    "ml": 0.001,
    "l": 1,
    "m3": 1000,
    "cup": 0.24,
    "galon": 3.785
  };

  // METHOD KONVERSI UMUM
  static double konversi(
      double nilai, String dari, String ke, Map<String, double> data) {
    return nilai * data[dari]! / data[ke]!;
  }

  // KONVERSI SUHU
  static double konversiSuhu(double nilai, String dari, String ke) {
    double celsius;

    switch (dari.toUpperCase()) {
      case "F":
        celsius = (nilai - 32) * 5 / 9;
        break;
      case "K":
        celsius = nilai - 273.15;
        break;
      case "RE":
        celsius = nilai * 5 / 4;
        break;
      default:
        celsius = nilai;
    }

    switch (ke.toUpperCase()) {
      case "F":
        return (celsius * 9 / 5) + 32;
      case "K":
        return celsius + 273.15;
      case "RE":
        return celsius * 4 / 5;
      default:
        return celsius;
    }
  }
}