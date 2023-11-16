import 'package:bagun_datar_kelas_b/controller/lingkaranController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class lingkaran extends StatelessWidget {
  lingkaran({super.key});

  final lingkaranController _lingkarancontroller = Get.put(lingkaranController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("segitiga"),
    ),
    body: Column(
    children: [
    Image.asset(
    "asset/bunder.jpeg",
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
    _lingkarancontroller. r= double.parse(value);
    decoration: InputDecoration(
    fillColor: Colors.white,
    filled: true,
    labelText: "π x r²",
    hintText: "masukan π x r²",
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
    child: Text("Hitung π x r²")),
    ),

    Obx(() => Text(_lingkarancontroller.hasil.value)),
    ],
    ),
    );
  }
  }
