import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget doctorcard(String image, String name, String role, ) {
      return Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(bottom: 2, ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23), color: const Color(0xffFFFFFF)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24,
            ),
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                image: DecorationImage(
                    fit: BoxFit.cover, 
                    image: AssetImage(
                      image
                      )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 11,
                        ),
                      ),
                      Text(
                        role,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                Row(
                  children: [
                    Container(
            width: 6,
            height: 6,
            decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/Stars.png")
                        )),
          ),
          Text(
                    "4.8",
                    style: GoogleFonts.poppins(
                      fontSize: 9,
                      color: const Color(0xff308CF8),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  ],
                ),
                ],
              ),
            )
          ],
        ),
      );
    }
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, \nFaisal Islami",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Stay Healthy with Our Spesialis Doctor",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/Faisal.jpeg"))),
                  ),
                ],
              ),
              doctorcard("assets/doc2.png", "dr. Mawar N.", "Spesialis Penyakit Dalam "),
              doctorcard("assets/doc1.png", "dr. Zizah Ayuningsih.","Spesialis Kulit Kelamin "),
            ],
          ),
        )),
      ),
    );
  }
}
