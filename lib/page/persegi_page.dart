import 'package:bagun_datar_kelas_b/controller/persegiKontrol.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Persegipage extends StatelessWidget {
  Persegipage

  ({super.key});

  final persegiController _persegiController = Get.put(persegiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("persegi_page"),),
      body: Column(
        children: [
        Image.asset("asset/segitiga.jpeg", height: 100,),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("persegi", style: TextStyle(color: Colors.white),
        ),
      ), Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
          "asdfghjklzxcvbnm"
      ),
    ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          onChanged: (value) {
            _persegiController.sisi = int.parse(value);
          },
          decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              labelText: "Sisi",
              hintText: "Masukkan Sisi",
              hintStyle: TextStyle(color: Colors.grey.shade400),
              contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
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
        child: ElevatedButton(onPressed: () {
          _persegiController.hitungluas();
        }, child: Text("Hitung Luas")),
      ),
      Padding(
          padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: () {
        _persegiController.hitungluas();
      }, child: Text("Hitung Keliling")),
      ),
      Obx(() => Text(_persegiController.hasil.value)),
      ]
    ),
    );
  }
}
