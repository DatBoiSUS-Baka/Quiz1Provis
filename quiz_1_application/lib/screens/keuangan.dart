import 'package:flutter/material.dart';

void main() {
  runApp(FinancialApp());
}

class FinancialApp extends StatelessWidget {
  const FinancialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FinancialScreen(),
    );
  }
}

class FinancialScreen extends StatelessWidget {
  const FinancialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Saldo Kasyful",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text("132*********3", style: TextStyle(color: Colors.grey)),
                  SizedBox(height: 10),
                  Text(
                    "Rp. 2.000.000,00",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "PEMASUKAN",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Rp. 3.000.000",
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "PENGELUARAN",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Rp. 1.000.000",
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tagihan UKT Semester Genap 2024-2025",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Sudah Lunas!", style: TextStyle(color: Colors.green)),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Riwayat Transaksi",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text("Lihat semua"),
                            Icon(Icons.arrow_forward),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    leading: Icon(Icons.shopping_cart, color: Colors.blue),
                    title: Text("Pembelian Buku"),
                    subtitle: Text("Rp. 150.000"),
                    trailing: Text(
                      "-Rp. 150.000",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.fastfood, color: Colors.orange),
                    title: Text("Makan Siang"),
                    subtitle: Text("Rp. 50.000"),
                    trailing: Text(
                      "-Rp. 50.000",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.attach_money, color: Colors.green),
                    title: Text("Gaji Part-time"),
                    subtitle: Text("Rp. 500.000"),
                    trailing: Text(
                      "+Rp. 500.000",
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.sentiment_satisfied),
            label: "Medsos",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "Elearning"),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "Jadwal & Todo",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Pesan & Group",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notifikasi",
          ),
        ],
      ),
    );
  }
}
