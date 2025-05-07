import 'dart:io';

void main() {
  // 1. Cetak nama Anda
  print("Silfiana Nur Hidatur Rohmah");

  // 2. Cetak Hello dengan input
  stdout.write('Masukkan nama Anda: ');
  String nama = stdin.readLineSync()!;
  print("Hello, saya '$nama'");
  print('Hello, saya "$nama"');

  // 3. Konstanta int
  const int angka = 7;
  print("Angka konstan: $angka");

  // 4. Bunga sederhana (p * t * r) / 100
  stdout.write("Masukkan pokok pinjaman (p): ");
  double p = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan waktu (t): ");
  double t = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan suku bunga (r): ");
  double r = double.parse(stdin.readLineSync()!);
  double bunga = (p * t * r) / 100;
  print("Bunga sederhana = $bunga");

  // 5. Cetak persegi dari angka
  stdout.write("Masukkan sisi persegi: ");
  int sisi = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < sisi; i++) {
    print('* ' * sisi);
  }

  // 6. Nama lengkap dari nama depan dan belakang
  stdout.write("Masukkan nama depan: ");
  String depan = stdin.readLineSync()!;
  stdout.write("Masukkan nama belakang: ");
  String belakang = stdin.readLineSync()!;
  print("Nama lengkap: $depan $belakang");

  // 7. Hasil bagi dan sisa
  stdout.write("Masukkan bilangan pertama: ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Masukkan bilangan kedua: ");
  int b = int.parse(stdin.readLineSync()!);
  print("Hasil bagi: ${a ~/ b}");
  print("Sisa bagi: ${a % b}");

  // 8. Tukar dua bilangan
  stdout.write("Masukkan nilai x: ");
  int x = int.parse(stdin.readLineSync()!);
  stdout.write("Masukkan nilai y: ");
  int y = int.parse(stdin.readLineSync()!);
  print("Sebelum tukar: x = $x, y = $y");
  int temp = x;
  x = y;
  y = temp;
  print("Setelah tukar: x = $x, y = $y");

  // 9. Hapus spasi dari string
  stdout.write("Masukkan kalimat dengan spasi: ");
  String kalimat = stdin.readLineSync()!;
  print("Tanpa spasi: ${kalimat.replaceAll(' ', '')}");

  // 10. Konversi String ke int
  stdout.write("Masukkan angka dalam string: ");
  String angkaString = stdin.readLineSync()!;
  int angkaInt = int.parse(angkaString);
  print("Angka dalam int: $angkaInt");

  // 11. Bagi tagihan restoran
  stdout.write("Masukkan total tagihan: ");
  double total = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan jumlah orang: ");
  int orang = int.parse(stdin.readLineSync()!);
  double perOrang = total / orang;
  print("Setiap orang membayar: Rp${perOrang.toStringAsFixed(2)}");
}
