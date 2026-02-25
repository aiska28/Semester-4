class TokoMatcha {
  static void jalankan() { // menggunakna static agar dapat dipanggil tanpa membuat object. 
    print('=== APLIKASI TOKO MATCHA ===\n');

    // Data produk
    String namaProduk = 'Matcha Latte';
    double harga = 28000;
    int jumlahBeli = 3;
    bool member = true; //status member

    // 1. OPERATOR ARITMATIKA
    double total = harga * jumlahBeli; // menghitung harga sebelum diskon
    print('Total kotor: Rp$total');

    // 2. OPERATOR RELASIONAL
    bool belanjaBesar = total > 75000; // mengecek apakah total belanja lebih dari 75 ribu
    print('Belanja > 75rb? $belanjaBesar');

    // 3. OPERATOR LOGIKA
    bool dapatDiskon = member && belanjaBesar; //akan diberi diskon apabila keduanya true
    print('Dapat diskon tambahan? $dapatDiskon');

    // 4. OPERATOR TERNARY
    double diskon = dapatDiskon ? total * 0.10 : 0; // dika true akan diberi diskon 10%
    print('Diskon: Rp$diskon');

    // 5. OPERATOR ASSIGNMENT
    double totalBayar = total;
    totalBayar -= diskon;
    print('Total bayar: Rp$totalBayar');

    // 6. INCREMENT / DECREMENT
    print('\n=== UPDATE STOK ===');
    int stok = 20;
    print('Stok awal: $stok');

    stok -= jumlahBeli;  // decremen. mengurangi stok
    print('Stok setelah beli: $stok');

    stok++;  // restock
    print('Stok setelah restock: $stok');

    print('\n=== STRUK PEMBELIAN ===');
    print('Produk : $namaProduk');
    print('Harga  : Rp$harga');
    print('Jumlah : $jumlahBeli');
    print('Member : $member');
    print('Total  : Rp${totalBayar.toStringAsFixed(0)}');

    print('\n=== TERIMA KASIH ===');
  }
}