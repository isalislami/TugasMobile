import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/LupaSandiPage.dart';
import 'package:flutter_application_1/pages/Mainmenu.dart';
import 'package:flutter_application_1/pages/getstarteddcrum.dart';
import 'package:google_fonts/google_fonts.dart';

class KataSandiPage extends StatelessWidget {
  const KataSandiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: const BoxDecoration(color: Color(0xff253550)),
      ),
      Container(
        margin: const EdgeInsets.only(top: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 125,
            ),
            Image.asset(
              'assets/puskem.png',
              width: 95,
              height: 80,
            ),
            const SizedBox(
              width: 1,
            ),
            Text(
              'DocRum',
              style: GoogleFonts.poppins(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ],
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/dokterrr.png',
            width: 350,
            height: 520,
          ),
          const SizedBox(
            height: 700,
          )
        ],
      ),
      const Spacer(),
      GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MainMenuPage()));
        },
        child: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 550),
            padding: const EdgeInsets.symmetric(horizontal: 122, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(17)),
            child: Text(
              "Masuk",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
      Center(
        child: Container(
          margin: const EdgeInsets.only(top: 315),
          padding: const EdgeInsets.symmetric(horizontal: 46, vertical: 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(17)),
          child: Text(
            "Masukan Alamat Email",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ),
      ),
      Center(
        child: Container(
          margin: const EdgeInsets.only(top: 433),
          padding: const EdgeInsets.symmetric(horizontal: 63, vertical: 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(17)),
          child: Text(
            "Masukan Password",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ),
      ),
      Center(
          child: Container(
        margin: const EdgeInsets.only(top: 620, right: 185),
        child: Text(
          "Belum Punya Akun?",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 11,
              color: const Color(0xffFFFFFF)),
        ),
      )),
      Center(
          child: Container(
        margin: const EdgeInsets.only(top: 620, right: 70),
        child: Text(
          "       Klik",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 11,
              color: const Color(0xffFFFFFF)),
        ),
      )),
      const Spacer(),
      GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LupaSandiPage ()));
          },
          child: Container(
            margin: const EdgeInsets.only(top: 677.5, left: 162),
            child: Text(
              "  disni",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: const Color(0xff0093DB)),
            ),
          )),
    ]));
  }
}
