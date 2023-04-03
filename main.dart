// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:garnas/koleksi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: Navigator(
        initialRoute: '/',
        onGenerateRoute: (RouteSettings settings) {
          WidgetBuilder builder;
          switch (settings.name) {
            case '/':
              builder = (BuildContext _) => const Home();
              break;
            case '/collection':
              builder = (BuildContext _) => const Collection();
              break;
            // Add more routes as needed
            default:
              throw Exception('Invalid route: ${settings.name}');
          }
          return MaterialPageRoute(builder: builder, settings: settings);
        },
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181818),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/aaa-removebg-preview.png',
              width: 50,
              height: 50,
            ),
            Image.asset(
              'assets/bbb-removebg-preview.png',
              height: 150,
              width: 100,
            ),
          ],
        ),
        backgroundColor: const Color(0xff999999),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                color: Colors.white,
                width: double.infinity,
                height: 250,
                child: Image.asset('assets/galnas-home.png', fit: BoxFit.fill)),
            const SizedBox(
              height: 100,
            ),
            const Text(
              "PAMERAN TERKINI",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              child: Center(
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                  ),
                  items: [
                    Container(
                      color: const Color(0xff181818),
                      width: 500,
                      height: 500,
                      child: Center(
                          child: Image.asset('assets/pameran-tetap.jpg',
                              fit: BoxFit.fill)),
                    ),
                    Container(
                      color: const Color(0xff181818),
                      width: 500,
                      height: 500,
                      child: Center(
                          child: Image.asset('assets/pameran-1.jpeg',
                              fit: BoxFit.fill)),
                    ),
                    Container(
                      color: const Color(0xff181818),
                      width: 500,
                      height: 500,
                      child: Center(
                          child: Image.asset('assets/pameran-2.jpg',
                              fit: BoxFit.fill)),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              "INFORMASI TERKINI",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              child: Center(
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                  ),
                  items: [
                    Container(
                      color: const Color(0xff181818),
                      width: 500,
                      height: 500,
                      child: Center(
                          child: Image.asset('assets/info-1.jpeg',
                              fit: BoxFit.fill)),
                    ),
                    Container(
                      color: const Color(0xff181818),
                      width: 500,
                      height: 500,
                      child: Center(
                          child: Image.asset('assets/info-2.jpeg',
                              fit: BoxFit.fill)),
                    ),
                    Container(
                      color: const Color(0xff181818),
                      width: 500,
                      height: 500,
                      child: Center(
                          child: Image.asset('assets/info-3.jpeg',
                              fit: BoxFit.fill)),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xff181818).withOpacity(1),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: const Color(0xff999999),
              child: Image.asset(
                'assets/aaa-removebg-preview.png',
                width: 50,
                height: 50,
              ),
            ),
            const SizedBox(height: 25),
            const ListTile(
              title: Text(
                "Halaman Depan",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.white),
              ),
            ),
            const ListTile(
              title: Text(
                "Kunjungi Kami",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.white),
              ),
            ),
            const ListTile(
              title: Text(
                "Layanan",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
            ),
            ListTile(
                title: const Text(
                  "Koleksi",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Collection()))),
            const ListTile(
              title: Text(
                "Arsip",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
            ),
            ExpansionTile(
              title: const Text(
                "Tentang Kami",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
              childrenPadding: const EdgeInsets.only(left: 60),
              collapsedIconColor: Colors.white,
              iconColor: Colors.red,
              children: [
                ListTile(
                  title: const Text(
                    "Profil",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  onTap: () {
                    //action on press
                  },
                ),
                ListTile(
                  title: const Text(
                    "Denah",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  onTap: () {
                    //action on press
                  },
                ),
                ListTile(
                  title: const Text(
                    "Manajemen",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  onTap: () {
                    //action on press
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      drawerScrimColor: Colors.black.withOpacity(0.7),
    );
  }
}
