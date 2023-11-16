import 'package:bagun_datar_kelas_b/page/persegi_page.dart';
import 'package:bagun_datar_kelas_b/page/segitiga.dart';
import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("home_page", style: TextStyle(color: Colors.pink)),
        backgroundColor: const Color(0xFF3D62DC),
      ),
      body: ListView(
        children: [
          Row(children: [
            Expanded(
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Segitiga()));
                    },
                    child: CustomMenu(
                        imageAsset: "asset/segitiga.jpeg", title: "segitiga"))),
            Expanded(
                child: InkWell(
                  onTap: (){},
                  child: CustomMenu(
                      imageAsset: "asset/kotak.jpeg", title: "persegi"),
                )),
          ]),
          Row(
            children: [
              Expanded(
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Persegipage()));
                      },
                      child: CustomMenu(
                          imageAsset: "asset/kotakdowo.jpeg",
                          title: "persegipanjang"))),
              Expanded(
                  child: InkWell(
                    onTap: (){},
                    child: CustomMenu(
                        imageAsset: "asset/bunder.jpeg", title: "lingkaran"),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
    required this.imageAsset,
    required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        color: Colors.blue,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        child: Column(
          children: [
            Image.asset(imageAsset),
            Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ));
  }
}
