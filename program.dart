import 'dart:io';

void main(List<String> args) {
  List barang = [
    ['Asus', 'Hitam', 18000000, 8],
    ['Lenovo', 'Putih', 15000000, 10],
  ];

  bool running = true;

  while (running) {
    print('Menu');
    print('1. Tampilkan semua items');
    print('2. Tambahkan Items');
    print('3. Hapus Items');
    print('4. Edit Items');
    print('5. Cari Items');
    print('0. Keluar');
    print('Pilih Menu');
    print('=======================================');

    var pilihan = int.parse(stdin.readLineSync()!);
    print('=======================================');

    switch (pilihan) {
      case 1:
        barang.forEach((item) {
          print('Nama: ' + item[0]);
          print('Warna: ' + item[1]);
          print('Harga: ' + item[2].toString());
          print('Stok: ' + item[3].toString());
          print('=======================================');
        });
        break;
      case 2:
        print('Tambah item: ');
        print('Nama:');
        var nama = stdin.readLineSync();
        print('Warna: ');
        var warna = stdin.readLineSync();
        print('Harga: ');
        var harga = stdin.readLineSync();
        print('Stok: ');
        var stok = stdin.readLineSync();

        barang.add([nama, warna, harga, stok]);
        print('Item berhasil ditambahkan');
        print('=======================================');
        break;
      case 3:
        print('Hapus items: ');
        print('Masukan nomor yang ingin dihapus: ');
        var hapus = int.parse(stdin.readLineSync()!);
        barang.removeAt(hapus);
        print('Item berhasil di hapus');
        print('=======================================');
        break;
      case 4:
        print('Edit items: ');
        print('Masukan nomor item yang ingin di edit');
        var edit = int.parse(stdin.readLineSync()!);
        print('Nama:');
        var nama = stdin.readLineSync();
        print('Warna: ');
        var warna = stdin.readLineSync();
        print('Harga: ');
        var harga = stdin.readLineSync();
        print('Stok: ');
        var stok = stdin.readLineSync();

        barang[edit] = [nama, warna, harga, stok];
        print('Item berhasil di edit');
        print('=======================================');   
        break;
      case 5:
        print('Cari item: ');
        print('Masukan nomor yang ingin dicari: ');
        var cari = int.parse(stdin.readLineSync()!) - 1;
        print(barang[cari]);
        // if (barang.contains(cari)) {
        //   print(barang[cari]);
        // } else {
        //   print('Barang tidak di temukan');
        // }
        print('=======================================');
        break;
      case 0:
        print('Anda Berhasil Keluar');
        running = false;
        break;
      default:
    }
  }
}
