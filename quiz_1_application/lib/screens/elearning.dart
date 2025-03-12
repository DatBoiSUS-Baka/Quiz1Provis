import 'package:flutter/material.dart';

void main() {
  runApp(ElearningApp());
}

class ElearningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ElearningScreen(),
    );
  }
}

class ElearningScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade400,
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade600,
        title: Text(
          "Elearning Class",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: List.generate(6, (index) => courseCard(index)),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // Menandai Elearning sebagai halaman aktif
        selectedItemColor: Colors.cyan.shade800,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.sentiment_satisfied), label: "Medsos"),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "Elearning"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: "Jadwal & Todo"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Pesan & Group"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifikasi"),
        ],
      ),
    );
  }

  Widget courseCard(int index) {
    List<String> titles = [
      "Pemrograman Visual", "Big Data Platform", "Proyek Konsultasi",
      "Sistem Operasi", "Metodologi Penelitian", "Analisis Data"
    ];
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            width: double.infinity,
            color: Colors.grey.shade300,
            child: Text(
              titles[index],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Mata Kuliah ini memiliki tugas yang harus dikerjakan."),
          ),
        ],
      ),
    );
  }
}
