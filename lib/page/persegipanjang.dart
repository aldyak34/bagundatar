import 'package:bagun_datar_kelas_b/controller/persegipanjangControl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pesegipanjang extends StatelessWidget {
  Pesegipanjang({super.key});

  final pesegipanjangControl _persegipanjangControl = Get.put(pesegipanjangControl());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("persegipanjang"),
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
    "persegipanjang",
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
    _persegipanjangControl.K = 2 x (p +l) = int.parse(value);
    decoration: InputDecoration(
    fillColor: Colors.white,
    filled: true,
    labelText: "K = 2 x (p +l)",
    hintText: "Masukkan K = 2 x (p +l)",

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
    child: Text("Hitung K = 2 x (p +l)")),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
    onPressed: () {
    _segitigaController.hitungluas();
    },
    child: Text("Hitung K = 2 x (p +l)")),
    ),
    Obx(() => Text(persegipanjangControl.hasil.value)),
    ],
    ),
    );
    }
  }