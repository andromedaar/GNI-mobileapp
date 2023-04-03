import 'package:flutter/material.dart';

class Collection extends StatelessWidget {
  const Collection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181818),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
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
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 100,
            ),
            const Text(
              "Koleksi Galeri Nasional Indonesia",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 22),
            ),
            const SizedBox(
              height: 50,
            ),
            Image.asset('assets/garuda1.jpeg', fit: BoxFit.contain),
            const SizedBox(
              height: 15,
            ),
            RichText(
              text: const TextSpan(
                children: <InlineSpan>[
                  TextSpan(
                    text: 'Garuda',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  WidgetSpan(
                      child: SizedBox(
                    width: 5,
                  )),
                  TextSpan(
                    text: '1969\n',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  WidgetSpan(
                      child: SizedBox(
                    height: 25,
                  )),
                  TextSpan(
                    text: 'Abas Alibasyah',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Image.asset('assets/ibuku1.jpeg', fit: BoxFit.contain),
            const SizedBox(
              height: 15,
            ),
            RichText(
              text: const TextSpan(
                children: <InlineSpan>[
                  TextSpan(
                    text: 'Ibuku',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  WidgetSpan(
                      child: SizedBox(
                    width: 5,
                  )),
                  TextSpan(
                    text: '1941\n',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  WidgetSpan(
                      child: SizedBox(
                    height: 25,
                  )),
                  TextSpan(
                    text: 'Affandi',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Image.asset('assets/berhias1.jpeg', fit: BoxFit.contain),
            const SizedBox(
              height: 14,
            ),
            RichText(
              text: const TextSpan(
                children: <InlineSpan>[
                  TextSpan(
                    text: 'Berhias',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  WidgetSpan(
                      child: SizedBox(
                    width: 5,
                  )),
                  TextSpan(
                    text: '1953\n',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  WidgetSpan(
                      child: SizedBox(
                    height: 25,
                  )),
                  TextSpan(
                    text: 'Agus Djaya',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
