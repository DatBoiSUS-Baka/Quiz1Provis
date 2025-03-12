import 'package:flutter/material.dart';

void main() {
  runApp(SocialMediaApp());
}

class SocialMediaApp extends StatelessWidget {
  const SocialMediaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SocialMediaScreen(),
    );
  }
}

class SocialMediaScreen extends StatelessWidget {
  const SocialMediaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "MEDIA SOSIAL",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
          IconButton(icon: Icon(Icons.chat_bubble_outline), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            storySection(),
            SizedBox(height: 10),
            Column(children: List.generate(2, (index) => postCard())),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
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

  Widget storySection() {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 10),
        itemCount: 6,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey.shade300,
                  child: Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.grey.shade700,
                  ),
                ),
                SizedBox(height: 5),
                Text("User ${index + 1}", style: TextStyle(fontSize: 12)),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget postCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300, // Perbesar ukuran foto
            color: Colors.grey,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.favorite_border),
              SizedBox(width: 10),
              Icon(Icons.comment),
              SizedBox(width: 10),
              Icon(Icons.send),
            ],
          ),
          SizedBox(height: 10),
          Text("Lorem Ipsum", style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
            "blablablablablablablabla",
            style: TextStyle(fontSize: 12), // Perkecil ukuran deskripsi
          ),
        ],
      ),
    );
  }
}
