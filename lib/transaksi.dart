import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'detailtransaksi.dart';

class Transaksi extends StatelessWidget {
  const Transaksi({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Daftar Transaksi")),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            "Riwayat Transaksi",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          // Contoh daftar transaksi
          listItemTransaksi(
            context: context,
            idTransaksi: "TRX001",
            namaProduk: "Iphone 12",
            total: 6000000,
            tanggal: "12 Agustus 2025",
            detail: "Pembelian 1 unit iPhone 12 warna hitam.",
          ),
          listItemTransaksi(
            context: context,
            idTransaksi: "TRX002",
            namaProduk: "Hoodie",
            total: 600000,
            tanggal: "15 Agustus 2025",
            detail: "Pembelian 1 buah hoodie warna abu-abu.",
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        selectedItemColor: Colors.grey[700],
        unselectedItemColor: Colors.grey[500],
        onTap: (index) {
          if (index == 0) Navigator.popAndPushNamed(context, '/');
          if (index == 1) Navigator.popAndPushNamed(context, '/transaksi');
          if (index == 2) Navigator.popAndPushNamed(context, '/profile');
        },
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Payment", icon: Icon(Icons.money)),
          BottomNavigationBarItem(label: "Me", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}

Widget listItemTransaksi({
  required String idTransaksi,
  required String namaProduk,
  required int total,
  required String tanggal,
  required String detail,
  required BuildContext context,
}) {
  return Card(
    margin: const EdgeInsets.symmetric(vertical: 8),
    child: ListTile(
      title: Text(namaProduk),
      subtitle: Text("Tanggal: $tanggal\nTotal: Rp$total"),
      trailing: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailTransaksi(
                idTransaksi: idTransaksi,
                namaProduk: namaProduk,
                total: total,
                tanggal: tanggal,
                detail: detail,
              ),
            ),
          );
        },
        child: const Text("Detail"),
      ),
    ),
  );
}
