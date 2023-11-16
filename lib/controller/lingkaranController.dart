import 'package:get/get.dart';

class lingkaranController extends GetxController {
  double r = 0;
  final hasil = "".obs;

  void hitungluas() {
    double hitung = 3.14*r*r;
    hasil.value = "hasil perhitungan dari π x r² = $hitung";

  }
}