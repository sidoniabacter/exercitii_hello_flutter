// Pachetul Material: widget-uri de bază și culori predefinite (Colors).
import 'package:material_ui/material_ui.dart';

/// Punctul de intrare al aplicației, ca metoda `main` din Java.
void main() {
  // runApp afișează pe tot ecranul widget-ul primit, rădăcina arborelui de widget-uri.
  runApp(
    // ColoredBox umple tot spațiul primit cu o culoare.
    ColoredBox(
      // Culoarea de fundal a ecranului.
      // 2) Schimbă fundalul. Înlocuiește Colors.yellow cu Colors.lightBlue sau Colors.green.
      // Scrie Colors. și așteaptă: VS Code îți arată toate culorile disponibile.

      // color: Colors.yellow,
      // color: Colors.lightBlue,
      color: Colors.green,
      // child este widget-ul aflat în interiorul altui widget.
      // Center așază child-ul în mijlocul spațiului disponibil.

      // child: Center(

      // 8)Mută caseta. Înlocuiește Center cu Align și adaugă parametrul alignment: Alignment.topCenter. Încearcă și Alignment.bottomRight.
      child: Align(
        //alignment: Alignment.topCenter,
        alignment: Alignment.bottomRight,

        // Container este un fel de <div> din HTML: o casetă cu decorație, padding și un child.
        child: Container(
          // BoxDecoration descrie cum arată caseta.
          decoration: BoxDecoration(
            // Culoarea casetei: roșu cu opacitate 20%, prin care se vede fundalul galben.

            // 3) Schimbă transparența casetei. Modifică alpha: 0.2 la 0.6, apoi la 1. Ce se întâmplă cu culoarea casetei?
            // culoarea casetei devine mai opacă pe măsură ce crește valoarea alpha, iar la 1 devine complet opacă și nu se mai vede fundalul.

            // color: Colors.redAccent.withValues(alpha: 0.2),
            // color: Colors.redAccent.withValues(alpha: 0.6),
            color: Colors.redAccent.withValues(alpha: 1.0),

            // Colțuri rotunjite, cu raza de 20 de pixeli.

            // 4)Fă colțurile rotunde de tot. Mărește raza din BorderRadius.circular(20) la 60, apoi la 200.

            // borderRadius: BorderRadius.circular(20),
            // borderRadius: BorderRadius.circular(60),
            borderRadius: BorderRadius.circular(200),

            // Bordura: o linie roșie subțire în jurul casetei.
            border: Border.all(color: Colors.red.withValues(alpha: 0.3), width: 1.5),

            // Umbra casetei; este o listă, pentru că o casetă poate avea mai multe umbre.
            boxShadow: [
              BoxShadow(
                // 5)Mută și mărește umbra. Schimbă Offset(0, 4) în Offset(10, 10) și blurRadius: 10 în 30. Apoi schimbă culoarea umbrei la Colors.black.withValues(alpha: 0.5).

                // Negru aproape transparent, pentru o umbră discretă.
                // color: Colors.black.withValues(alpha: 0.1),
                color: Colors.black.withValues(alpha: 0.5),

                // Cât de difuză este marginea umbrei.
                // blurRadius: 10,
                blurRadius: 30,

                // Mută umbra cu 4 pixeli în jos (x = 0, y = 4).
                // offset: const Offset(0, 4),
                offset: const Offset(10, 10),
              ),
            ],
          ),

          // padding: spațiul dintre marginea casetei și conținut, 20 de pixeli pe fiecare latură.

          // 7)Schimbă spațiul interior. Înlocuiește EdgeInsets.all(20) cu EdgeInsets.symmetric(horizontal: 60, vertical: 10). Ce s-a schimbat?
          // Spațiul interior a devenit mai mare pe orizontală (stânga și dreapta) și mai mic pe verticală (sus și jos).

          // padding: const EdgeInsets.all(20),
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),

          // Text afișează un șir de caractere pe ecran.
          child: const Text(
            // Textul afișat.

            // 1) Schimbă textul. Scrie numele tău în loc de 'World Hello'. Ce se întâmplă dacă textul e prea lung pentru ecran?
            // dacă textul e prea lung pentru ecran, se va tăia la marginea casetei și nu va fi vizibil complet.
            'Bacter Sidonia - Salomeea',

            // Fără MaterialApp, trebuie să spunem noi direcția textului: de la stânga la dreapta.
            // 9) Provoacă o eroare. Șterge rândul cu textDirection, salvează și pornește aplicația din nou. Citește mesajul de eroare: Flutter îți spune ce lipsește. Apoi pune rândul la loc.
            textDirection: TextDirection.ltr,

            // TextStyle stabilește cum arată textul.
            style: TextStyle(
              // 6)Scrie îngroșat. Adaugă în TextStyle parametrul fontWeight: FontWeight.bold. Adaugă și fontStyle: FontStyle.italic.

              //text ingrosat
              fontWeight: FontWeight.bold,

              //text italic
              fontStyle: FontStyle.italic,

              // Culoarea literelor.
              color: Colors.black,

              // Spațiu suplimentar între litere, în pixeli.
              letterSpacing: 20,

              // Mărimea literelor, în pixeli.
              fontSize: 60,
            ),
          ),
        ),
      ),
    ),
  );
}

// 10) Rulează testul. După ce schimbi textul de la exercițiul 1, rulează flutter test. De ce nu mai trece testul? Ce trebuie schimbat în test/widget_test.dart ca să treacă din nou?
// Testul nu mai trece pentru că textul afișat în aplicație s-a schimbat. Trebuie să actualizezi așteptarea testului în test/widget_test.dart pentru a reflecta noul text afișat.
