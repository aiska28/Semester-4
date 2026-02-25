import 'dart:io'; // membaca input 
import 'package:dart_week_2/konversi_unit.dart';

void main() {
  print("=== APLIKASI KONVERSI UNIT ===");

  // menampilkan kategori konversi
  print("1. Panjang");
  print("2. Massa");
  print("3. Volume");
  print("4. Suhu");

  stdout.write("Pilih kategori: ");
  String? pilihan = stdin.readLineSync(); // digunakan untuk user memilih kategori

  stdout.write("Masukkan nilai: ");
  double nilai = double.parse(stdin.readLineSync()!); // membaca nilai angka, mengubah string menjadi angka desimal

  stdout.write("Dari unit: ");
  String dari = stdin.readLineSync()!; // membaca unit asal

  stdout.write("Ke unit: ");
  String ke = stdin.readLineSync()!; //membaca unit tujuan

  double hasil = 0; // menyimpan hsil konversi

  switch (pilihan) {
    case "1":
      hasil = UnitConverter.konversi(
          nilai, dari, ke, UnitConverter.panjang);
      break;
    case "2":
      hasil = UnitConverter.konversi(
          nilai, dari, ke, UnitConverter.massa);
      break;
    case "3":
      hasil = UnitConverter.konversi(
          nilai, dari, ke, UnitConverter.volume);
      break;
    case "4":
      hasil = UnitConverter.konversiSuhu(nilai, dari, ke);
      break;
    default:
      print("Pilihan tidak valid");
      return;
  }

  print("\nHasil: ${hasil.toStringAsFixed(4)} $ke"); // menampilkan hsil
  // ${} : string interpolation
  // toStringAsFixed(4) : menampilkan 4 angka di belakang koma
  // $ke : menampilkan satuan tujuan
}