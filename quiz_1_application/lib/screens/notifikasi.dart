import 'package:flutter/material.dart';

void main() {
  runApp(NotificationApp());
}

class NotificationApp extends StatelessWidget {
  const NotificationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotificationScreen(),
    );
  }
}

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade500,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        title: Text(
          "Notification",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(Icons.notifications, size: 50, color: Colors.black),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  notificationCard("Jadwal Mata Kuliah", "Hari ini ada kelas, jangan lupa untuk datang."),
                  notificationCard("To do", "Tugas kamu jangan lupa dikerjakan."),
                  notificationCard("Pengumuman", "Kamu telah bayar UKT"),
                  notificationCard("Lorem Ipsum", "blablablablabla"),
                  notificationCard("Lorem Ipsum", "blablablablabla"),
                  notificationCard("Lorem Ipsum", "blablablablabla"),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4, // Notifikasi aktif
        selectedItemColor: Colors.blue,
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

  Widget notificationCard(String title, String description) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
      ),
    );
  }
}