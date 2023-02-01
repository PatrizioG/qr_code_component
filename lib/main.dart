import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        decoration: BoxDecoration(
            color: const HSLColor.fromAHSL(1, 212, 0.45, 0.89).toColor()),
        child: Center(
          child: Container(
            decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 30),
            width: 300,
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              const ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image(image: AssetImage('images/image-qr-code.png'))),
              const SizedBox(
                height: 20,
              ),
              Text('Improve your front-end skills by building projects',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.outfit(
                      fontWeight: FontWeight.bold, fontSize: 22)),
              const SizedBox(
                height: 20,
              ),
              Text(
                  'Scan the QR code to visit Frontend Mentor and take yoru coding skills to the next level',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.outfit(
                      color:
                          const HSLColor.fromAHSL(1, 220, 0.15, 0.55).toColor(),
                      fontSize: 16))
            ]),
          ),
        ),
      ),
    );
  }
}
