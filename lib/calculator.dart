
import 'constants.dart';

class Calculator {
  // Data yang dibutuhkan untuk menghitung BMR.
  Calculator({
    required this.height,
    required this.weight,
    required this.age,
    required this.gender,
  });

  final int height; // Tinggi badan dalam cm.
  final int weight; // Berat badan dalam kg.
  final int age; // Umur dalam tahun.
  final Gender gender; // Jenis kelamin pengguna.

  double _bmr = 0.0;

  // Menghitung BMR menggunakan rumus Mifflin-St Jeor.
  String calculateBMR() {
    if (gender == Gender.male) {
      // Rumus BMR untuk laki-laki.
      _bmr = (10 * weight) + (6.25 * height) - (5 * age) + 5;
    } else {
      // Rumus BMR untuk perempuan.
      _bmr = (10 * weight) + (6.25 * height) - (5 * age) - 161;
    }

    // Membulatkan hasil menjadi satu angka desimal.
    return _bmr.toStringAsFixed(1);
  }

  // Memberikan nama hasil perhitungan.
  String getResult() {
    return 'Basal Metabolic Rate (BMR)';
  }

  // Menjelaskan arti hasil BMR kepada pengguna.
  String getInterpretation() {
    return 'Perkiraan energi yang dibutuhkan tubuh saat istirahat '
        'adalah ${_bmr.toStringAsFixed(1)} kkal per hari. '
        'Nilai ini merupakan estimasi, bukan total kebutuhan '
        'kalori harian.';
  }
}
