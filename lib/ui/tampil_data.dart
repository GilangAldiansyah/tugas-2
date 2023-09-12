import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama; //contoh data yang di-passing
  final String nim; //contoh data yang di-passing
  final int tahunLahir; //contoh data yang di-passing
  final int usia;

  TampilData({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tahunLahir,
  })  : usia = DateTime.now().year - tahunLahir,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkenalan"),
      ),
      body: Container(
          child: Text("Nama Saya $nama, NIM $nim, dan umur saya adalah $usia")),
    );
  }
}
