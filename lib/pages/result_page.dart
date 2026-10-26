
import 'package:flutter/material.dart';
import 'package:kalkulator_bmr_kel6/components/custom_card.dart';
import 'package:kalkulator_bmr_kel6/components/bottom_button.dart';
import 'package:kalkulator_bmr_kel6/constants.dart';

class ResultPage extends StatelessWidget {
  // Menerima hasil perhitungan BMR dari InputPage.
  const ResultPage({
    super.key,
    required this.result,
    required this.bmr,
    required this.information,
  });

  final String result;
  final String bmr;
  final String information;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Judul halaman hasil.
      appBar: AppBar(
        title: const Text('BMR CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Menampilkan judul bagian hasil.
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your BMR Result',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // Menampilkan nilai BMR dan penjelasannya.
          Expanded(
            flex: 5,
            child: CustomCard(
              color: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    result,
                    textAlign: TextAlign.center,
                    style: resultTextStyle,
                  ),
                  Text(
                    bmr,
                    style: bmiTextStyle,
                  ),
                  const Text(
                    'kkal/hari',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      information,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Kembali ke halaman input untuk menghitung ulang.
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
