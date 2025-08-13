import 'package:flutter/material.dart';

class DetailTransaksi extends StatelessWidget {
  final String idTransaksi;
  final String namaProduk;
  final int total;
  final String tanggal;
  final String detail;

  const DetailTransaksi({
    super.key,
    required this.idTransaksi,
    required this.namaProduk,
    required this.total,
    required this.tanggal,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Transaksi")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("ID Transaksi: $idTransaksi", style: TextStyle(fontSize: 16)),
            Text("Produk: $namaProduk", style: TextStyle(fontSize: 16)),
            Text("Tanggal: $tanggal", style: TextStyle(fontSize: 16)),
            Text("Total: Rp$total", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            Text("Detail:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(detail, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}