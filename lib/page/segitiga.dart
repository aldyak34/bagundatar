import 'package:bagun_datar_kelas_b/controller/segitigaController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Segitiga extends StatelessWidget {
  Segitiga({super.key});

  final segitigaController _segitigaController = Get.put(segitigaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("segitiga"),
      ),
      body: Column(
        children: [
          Image.asset(
            "asset/kotakdowo.jpeg",
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "segitiga",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Segitiga sama sisi (bahasa Inggris: equilateral triangle) adalah segitiga yang ketiga sisinya sama panjang. Sebagai akibatnya semua sudutnya juga sama besar, yaitu 60°.["),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
    onChanged: (value) {
    _segitigaController.alas = int.parse(value);
    _segitigaController. tinggi= int.parse(value);
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "alas",
                  labelText: "Tinggi",
                  hintText: "Masukkan alas",
                  hintText: "masukan Tinggi",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  _segitigaController.hitungluas();
                },
                child: Text("Hitung alas")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  _segitigaController.hitungluas();
                },
                child: Text("Hitung tinggi")),
          ),
          Obx(() => Text(_segitigaController.hasil.value)),
        ],
      ),
    );
  }
}
