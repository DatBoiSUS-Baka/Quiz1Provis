import 'package:flutter/material.dart';

void main() {
  runApp(ScheduleTodoApp());
}

class ScheduleTodoApp extends StatelessWidget {
  const ScheduleTodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScheduleTodoScreen(),
    );
  }
}

class ScheduleTodoScreen extends StatelessWidget {
  const ScheduleTodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade500,
        title: Text(
          "Schedule & To Do",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            scheduleCard("Jadwal Kuliah", [
              "Big Data Platform, Senin 07.00 - 08.20",
              "Desain Pemrograman Berorientasi Objek, Senin 13.00 - 15.30",
              "Pemrograman Visual, Selasa 09.30 - 12.00",
              "Analisis dan Desain Algoritma, Selasa 15.30 - 18.00",
              "Metodologi Penelitian, Kamis 09.30 - 12.00",
              "Proyek Konsultasi, Kamis 13.00 - 15.30",
              "Sistem Operasi, Kamis 15.30 - 18.00",
            ]),
            SizedBox(height: 10),
            scheduleCard("Jadwal Tugas", [
              "Provis besok (23.59)",
              "Prokon besok lusa (23.59)",
            ]),
            SizedBox(height: 10),
            scheduleCard("To - Do", [
              "Mengerjakan Provis",
              "Mengerjakan Prokon",
              "Mengerjakan Sistem Operasi",
            ]),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        selectedItemColor: Colors.blue.shade800,
        unselectedItemColor: Colors.grey,
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

  Widget scheduleCard(String title, List<String> items) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(height: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: items.map((item) => Text("• $item")).toList(),
          ),
        ],
      ),
    );
  }
}
