import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: -2,
        title: 
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('Background.png'),
            fit: BoxFit.cover)
          ),
          child: Row(  // Change Column to Row
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
           // Align items to the start
          
          children: [
            
            Expanded(child: Container(
                height: 60,
                decoration: BoxDecoration(
                  
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(500),
                  
                ),
                child: Padding(padding: const EdgeInsets.all(6),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 12),
                    hintText: "Cari Pengumuman, Materi Kuliah...",
                    border: InputBorder.none,
                    suffixIcon: const Icon(Icons.search),
                    prefixIcon: IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {},
                  ),
                ),
                ),
              ),
            )
            ),
            
            const SizedBox(width: 20),  // Add spacing between container and image
            Image.asset(
              'User_Icon.png',  // Ensure the correct path
              width: 50,  // Increased size for better visibility
              height: 50,
            ),
          ],
        ),
        )
        
      ),
      body: 
      SingleChildScrollView(
        child: Stack(
          children: [
            // Background Container
            Container(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height,
              ),
              width: 500,
              height: 500,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('Background.png'),
                fit: BoxFit.fill),
              ),
            ),

            // Floating Container
            Positioned(
              left: 50,
              right: 50,
              top: 35,
              child: Container(
                width: 300,
                height: 300,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.2, red: 255, blue: 255, green: 255), // Adjust opacity
                      blurRadius: 5, // Adds blur for a better shadow effect
                      spreadRadius: 2, // Controls how much the shadow spreads
                      offset: const Offset(0, 3), // Adds depth
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      width: 150,
                      height: 300,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('Hantu.png'), scale: 2)),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Beasiswa Sampurna", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                      ],
                    )
                  ],
                ),
              ),
            ),

            Positioned(
              left: 50,
              right: 50,
              top: 350,
              child: 
              Container(
                width: 300,
                height: 75,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.2, red: 255, blue: 255, green: 255), // Adjust opacity
                      blurRadius: 5, // Adds blur for a better shadow effect
                      spreadRadius: 2, // Controls how much the shadow spreads
                      offset: const Offset(0, 3), // Adds depth
                    ),
                  ],
                ),
                child: Text("Kuliah hari ini...", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              ),
            ),

            Positioned(
              left: 50,
              right: 50,
              top: 480,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(image: AssetImage('Mental_Health_Icon.png'),
                      scale: 2.5),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(image: AssetImage('Akademik_Icon.png'),
                      scale: 2.5)
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(image: AssetImage('Keuangan_Icon.png'),
                      scale: 2.5,)
                    ),
                  ),
                ],
              ),
              
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: 
        [
          BottomNavigationBarItem(icon: Image.asset('Medsos_Icon.png', width: 50, height: 50,), label: 'Medsos'),
          BottomNavigationBarItem(icon: Image.asset('Elearning_Icon.png', width: 50, height: 50,), label: 'Elearning'),
          BottomNavigationBarItem(icon: Image.asset('Jadwal_Dan_Todo_Icon.png', width: 50, height: 50,), label: 'Jadwal & Todo'),
          BottomNavigationBarItem(icon: Image.asset('Pesan_Dan_Group_Icon.png', width: 50, height: 50,), label: 'Pesan & Grup'),
          BottomNavigationBarItem(icon: Image.asset('Notifikasi_Icon.png', width: 50, height: 50,), label: 'Notifikasi')
        ]),
    );
  }
}