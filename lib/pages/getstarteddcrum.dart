import 'package:flutter/material.dart';
import 'package:flutter_application_1/Katasandi.dart';
import 'package:flutter_application_1/pages/mainmenu.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/get-started.png")
                    )),
          ),
          Container(
            width: double.infinity,
            height: 444,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.0)
              ],
            )),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 64,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Treat ",
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          color: const Color(0xffFFFFFF),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                       Text(
                        "Patient ",
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          color: const Color(0xff308CF8),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                       Text(
                        "Like A ",
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          color: const Color(0xffFFFFFF),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Queen ",
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          color: const Color(0xff308CF8),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    child: Text(
                      "Explore the best our services with\n professional specialist doctor",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                          color: const Color(
                            0xffFFFFFF,
                          )),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const KataSandiPage()));
                  },
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 80),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 48, vertical: 14),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(17)),
                      child: Text(
                        "Get Started",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
