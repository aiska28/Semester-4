Naama   : Aiska Oca Amalia
NIM     : 244107060035
Kelas   : SIB 2G

1. Program Perhitungan BMI
program ini digunakan untuk menghitung nilai BMI berdasarkan berat dan tinggi badan, kemudian menentukan kategori BMI sesuai dengan standar. 
- pada program ini mengambil fungsi dari file bmi.dart, lalu menyimpan data berat dan tiggi dengan tipe data double digunakan karena bisa menyimpan angka desimal. 
- lalu dilakukan perhitungan nilai BMI dimana program mengirim nilai berat dan tinggi ke fungsi hitungBMI, di dalam fungsi tersebut dilakukan perhitungan sesuai rumus yang hasilnya akan disimpan dalam variabel bmi. 
- setelah itu penentuan kategori bmi dimana program akan mengirimkan nilai BMI ke fungsi katgoriBMI, lalu fungsi akan mengecel dengan percabangan if-else. hasilnya akan di dimpan dalam variabel aktegori
- yang terakhir program akan menampilkan hasil ke konsol, ${} digunakan untuk memasukkan variabel dalam teks lalu toStringAsFixed(2) membatasi angka menjadi 2 digit di belakang koma. 

2. Konversi Mata Uang
program ini berisi kelas konversi_mata_uang yang digunakan untuk mengonverensi nilai mata uang dari rupiah ke beberapa mata uang asing.
- program berkerja dengan menyimpan nilai rupiah, lalu memanggil method konversi. program memanggil class konversimatauang, lalu memanggil method keUSD untuk mengirim nilai rupiah sebagai parameter. 
- proses dalam method yaitu mengambil nilai rupiah dan nilai kursUSD lalu menghitung, kemudian nilainya akan dikembalikan ke main.
- hasil telah disimpan di variabel usd. proses tersebut akan terjadi sama untuk EUR dan SGD. kemudian akan menampilkan output yang ada.

3. Aplikasi Konsol Toko Matcha
program ini adalah simulasi sederhana aplikasi kasir toko matcha berbasis konsol. yang digunakan untuk menghitung total belanja, mengecek diskon, mengurangi stok dan menampilkan strukpembelian.
- cara kerja program ini dimaulai dari fungsi utama dalam class yang dipanggil dari main().
- inisialisasi data produk dimana program akan meyimpan data nama, harga, jumlah dna status member dalam perhitungan.lalu akan menghitung total belanja menggunakan operator aritmatika
- lalu program akan mengecek apakah belanja besar menggunakn operator rasional, lalu dilaukan oengecekkan apakah mendapat diskon menggunakan operator logika. dimana jika program akan melihat apakah sudah memenuhi syarat atau belum. jika hasilnya true maka akan mendapatkan diskon.
- menhitung dison menggunakan operator ternary dimana jika dapatdiskon atau tru akan mendapat potongan 10% tika tidak maka tidak mendapatkan diskon. setelah itu dilakukan perhitungan total pembayaran menggunakan operator assignment.
- setelah itu melakukan update stok increment dan decrement. jika semua operasi perhitungan telah selesai amakn akan ditampilkan stuk pembelian.

4. Aplikasi Konversi Unit
program ini berfungsi untuk menampilkan menu kategori konversi, dimana dia akan menerima input dari pengguna lalu memanggil fungsi konversi ke file lib/konversi_unit.dart, lalu menampilkan hasil konversi dengan format rapi.
- pada bin digunakan untuk melakukan input dan menampilkna output, pada lib digunakan untuk menjalankan logika perhitungan.
- pertama kita harus memilih kategori, lalu memasukkan angka yang ingin dikonversi, setelah itu masukkan unit asal dna unit tujuan.
- program akan menentukan kategori mana yang akan di pilih, setelah itu program akan menjalankan operasi sesuai dengan kategori yang di pilih, dimana hasilnya akan dikembalikan ke main() dan disimpan dalam variabel hasil.
- setelah itu program akan menampilkan hasil.
