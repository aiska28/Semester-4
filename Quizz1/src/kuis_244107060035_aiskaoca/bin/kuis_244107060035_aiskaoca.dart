void main() {
  String nama = "Aiska Oca Amalia";
  String nim = "244107060035";

  double nilaiUnikNim = double.parse(nim.substring(nim.length - 3));

  //harga barang
  List<double> hargaBarang = [
    40000.4,
    28000.0,
    25000.5,
    30000.5,
    75000.0
  ];

  // nilaiUnikNim sebgai elemen ke 6
  hargaBarang.add(nilaiUnikNim);

  // perhitungan total belanja
  double totalAwal = hitungTotal(hargaBarang);

  // null safety
  String? pesanDiskon;
  double diskon = 0;

  // percabangan untuk diskon
  if (totalAwal > 200000) {
    diskon = totalAwal * 0.10;
    pesanDiskon = "Mendapatkan diskon 10%";
  } else if (totalAwal >= 100000 && totalAwal <= 200000) {
    diskon = totalAwal * 0.05;
    pesanDiskon = "Mendapatkan diskon 5%";
  } else {
    diskon = 0;
    pesanDiskon = "Tidak mendapatkan diskon.";
  }

  double totalAkhir = totalAwal - diskon;

  //output
  print("Nama                : $nama");
  print("NIM                 : $nim");
  print("Total Awal          : Rp$totalAwal");
  print("Diskon yang didapat : Rp$diskon");
  print("Keterangan          : ${pesanDiskon!}");
  print("Total Akhir         : Rp$totalAkhir");
}

// fungsi menghitung ttal
  double hitungTotal(List<double> harga) {
    double total = 0;

    for (double item in harga) {
      total += item;
    }

    return total;
  }