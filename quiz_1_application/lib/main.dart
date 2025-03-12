import 'package:flutter/material.dart';
import 'package:quiz_1_application/screens/jadwaltodo.dart';
import 'package:quiz_1_application/screens/main_screen.dart';
import 'package:quiz_1_application/screens/mental.dart';
import 'package:quiz_1_application/screens/akademik.dart';
import 'package:quiz_1_application/screens/keuangan.dart';
import 'package:quiz_1_application/screens/medsos.dart';
import 'package:quiz_1_application/screens/elearning.dart';
import 'package:quiz_1_application/screens/pesan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz 1 Provis',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/main': (context) => const MainScreen(),
        '/mental': (context) => const MentalHealthScreen(),
        '/akademik': (context) => const AkademikScreen(),
        '/keuangan': (context) => const FinancialScreen(),
        '/medsos': (context) => const SocialMediaScreen(),
        '/elearning': (context) => const ElearningScreen(),
        '/jadwaltodo': (context) => const ScheduleTodoScreen(),
        '/pesan': (context) => ChatScreen(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  // Attribute
  const MyHomePage({
    super.key,
    this.color = const Color.fromARGB(200, 100, 76, 80),
  });

  final Color color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: const Text('Quiz 1 Provis'), centerTitle: true, backgroundColor: Colors.blue,),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/main');
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(400, 70),
                  ),
                  child: const Text("Main Screen"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/mental');
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(400, 70),
                  ),
                  child: const Text("Mental Health Screen"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/akademik');
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(400, 70),
                  ),
                  child: const Text("Akademik Screen"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/keuangan');
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(400, 70),
                  ),
                  child: const Text("Keuangan Screen"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/medsos');
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(400, 70),
                  ),
                  child: const Text("Medsos Screen"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/elearning');
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(400, 70),
                  ),
                  child: const Text("E-Learning Screen"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/jadwaltodo');
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(400, 70),
                  ),
                  child: const Text("Jadwal & Todo Screen"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/pesan');
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(400, 70),
                  ),
                  child: const Text("Pesan & Group Screen"),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(400, 70),
                ),
                child: const Text("Notifikasi Screen"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
