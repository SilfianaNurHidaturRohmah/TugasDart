import 'dart:io';
import 'dart:math';

void main() {
  // 1. Menentukan kelayakan memilih berdasarkan usia
  stdout.write("1. Masukkan usia Anda: ");
  int usia = int.parse(stdin.readLineSync()!);
  if (usia >= 17) {
    print("Anda memenuhi syarat untuk memilih.");
  } else {
    print("Anda belum memenuhi syarat untuk memilih.");
  }

  // 2. Menentukan bilangan positif, negatif, atau nol
  stdout.write("\n2. Masukkan angka: ");
  int angka = int.parse(stdin.readLineSync()!);
  switch (angka.sign) {
    case 1:
      print("Angka positif");
      break;
    case -1:
      print("Angka negatif");
      break;
    case 0:
      print("Angka nol");
      break;
  }

  // 3. Faktorial dengan while
  stdout.write("\n3. Masukkan angka untuk dihitung faktorialnya: ");
  int angkaFaktorial = int.parse(stdin.readLineSync()!);
  int hasilFaktorial = 1, i = 1;
  while (i <= angkaFaktorial) {
    hasilFaktorial *= i;
    i++;
  }
  print("Faktorial dari $angkaFaktorial adalah $hasilFaktorial");

  // 4. Tebak angka 1-10
  print("\n4. Tebak angka antara 1 dan 10:");
  int angkaBenar = Random().nextInt(10) + 1;
  int tebakan;
  do {
    stdout.write("Masukkan tebakan: ");
    tebakan = int.parse(stdin.readLineSync()!);
    if (tebakan != angkaBenar) {
      print("Salah, coba lagi!");
    }
  } while (tebakan != angkaBenar);
  print("Benar! Angka yang dimaksud adalah $angkaBenar");

  // 5. Cetak daftar terbalik
  print("\n5. Daftar terbalik:");
  List<String> daftar = ["apel", "jeruk", "mangga", "pisang"];
  for (var item in daftar.reversed) {
    print(item);
  }

  // 6. Cek tahun kabisat
  stdout.write("\n6. Masukkan tahun: ");
  int tahun = int.parse(stdin.readLineSync()!);
  if ((tahun % 4 == 0 && tahun % 100 != 0) || tahun % 400 == 0) {
    print("$tahun adalah tahun kabisat");
  } else {
    print("$tahun bukan tahun kabisat");
  }

  // 7. Cek hari kerja atau akhir pekan
  stdout.write("\n7. Masukkan nama hari: ");
  String hari = stdin.readLineSync()!.toLowerCase();
  switch (hari) {
    case "sabtu":
    case "minggu":
      print("Itu adalah akhir pekan.");
      break;
    case "senin":
    case "selasa":
    case "rabu":
    case "kamis":
    case "jumat":
      print("Itu adalah hari kerja.");
      break;
    default:
      print("Hari tidak valid.");
  }

  // 8. Hitung jumlah digit
  stdout.write("\n8. Masukkan angka: ");
  int angkaDigit = int.parse(stdin.readLineSync()!);
  int jumlahDigit = 0;
  int temp = angkaDigit.abs();
  while (temp != 0) {
    temp ~/= 10;
    jumlahDigit++;
  }
  print("Jumlah digit: $jumlahDigit");

  // 9. Permainan tebak angka 1-100
  print("\n9. Tebak angka antara 1 dan 100:");
  int target = Random().nextInt(100) + 1;
  int tebakan2;
  do {
    stdout.write("Masukkan tebakan: ");
    tebakan2 = int.parse(stdin.readLineSync()!);
    if (tebakan2 < target) {
      print("Terlalu kecil!");
    } else if (tebakan2 > target) {
      print("Terlalu besar!");
    }
  } while (tebakan2 != target);
  print("Selamat! Anda menebak angka yang benar: $target");

  // 10. Panjang kata-kata
  print("\n10. Panjang kata-kata:");
  List<String> kata = ["apel", "jeruk", "pisang", "nanas"];
  for (var k in kata) {
    print("$k -> panjang: ${k.length}");
  }
}
