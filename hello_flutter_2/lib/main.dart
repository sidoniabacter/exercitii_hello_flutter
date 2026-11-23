// Biblioteca math din Dart, de unde vine clasa Random.
import 'dart:math';

// Pachetul Material: widget-uri de bază și culori predefinite (Colors).
import 'package:material_ui/material_ui.dart';

// Fișierul nostru cu lista de glume, din același folder lib/.
import 'jokes.dart';

/// Punctul de intrare al aplicației, ca metoda `main` din Java.
void main() {
  // Generatorul de numere aleatoare, ca java.util.Random din Java.
  // final: variabila primește o valoare o singură dată, ca final din Java sau const din JavaScript.
  final randomGen = Random();

  // Un număr la întâmplare între 0 și numărul de glume minus 1, adică un index valid în listă.
  final currentJokeIndex = randomGen.nextInt(builtInJokes.length);

  //final currentJokeIndex = 0; // pentru a testa gluma adăugată (the one with the monkey and the banana), setează indexul la 0

  // Gluma de la acel index; la fiecare pornire a aplicației apare altă glumă.
  final joke = builtInJokes[currentJokeIndex];

  // runApp afișează pe tot ecranul widget-ul primit, rădăcina arborelui de widget-uri.
  runApp(
    // ColoredBox umple tot spațiul primit cu o culoare.
    ColoredBox(
      // Culoarea de fundal vine din glumă, așa că fiecare glumă are culoarea ei.
      color: joke.color,

      // Center așază child-ul în mijlocul spațiului disponibil.
      child: Center(
        // Padding lasă un spațiu gol în jurul child-ului, ca textul să nu atingă marginile.
        child: Padding(
          // 40 de pixeli pe fiecare latură.
          padding: const EdgeInsets.all(40),

          // Column așază mai multe widget-uri (children) unul sub altul, de sus în jos.
          child: Column(
            // Column ia pe verticală doar cât îi trebuie, ca Center să-l poată centra.
            mainAxisSize: .min,

            // Spațiul dintre două widget-uri vecine din children, în pixeli.
            spacing: 40.0,

            // children: lista widget-urilor din Column, în ordinea în care apar pe ecran.
            children: [
              // Primul child: textul glumei.
              Text(
                // Câmpul text din gluma aleasă.
                joke.text,

                // Fără MaterialApp, spunem noi direcția textului: de la stânga la dreapta.
                textDirection: TextDirection.ltr,

                // Fiecare rând al textului este centrat.
                textAlign: TextAlign.center,

                // TextStyle stabilește cum arată textul.
                style: const TextStyle(
                  // Mărimea literelor, în pixeli.

                  //4) Potrivește mărimea textului. Pornește aplicația pe telefon și apasă hot restart până dai de o glumă lungă. Încape textul pe ecran? Schimbă fontSize: 60 până când și glumele lungi încap.
                  // Dacă textul e prea mare, se va tăia la marginea casetei și nu va fi vizibil complet. Alege o mărime mai mică, ca să încapă și glumele lungi.

                  //fontSize: 60,
                  fontSize: 30,
                ),
              ),

              // Al doilea child: explicația culorii, mai mică și înclinată.
              Text(
                // Câmpul colorReason din gluma aleasă.
                joke.colorReason,

                // Direcția textului, ca la gluma de mai sus.
                textDirection: TextDirection.ltr,

                // Fiecare rând al textului este centrat.
                textAlign: TextAlign.center,

                // TextStyle stabilește cum arată textul.
                style: const TextStyle(
                  // Literele sunt la jumătate din mărimea glumei.
                  fontSize: 30,

                  // Litere înclinate (italic).
                  fontStyle: FontStyle.italic,
                ),
              ),

              // Al treilea child: un text fix, ca să vedem că Column primește oricâte widget-uri.
              Text(
                // Textul scris direct în cod, nu luat din glumă.
                'World Hello',

                // Forma scurtă pentru TextDirection.ltr: Dart știe deja tipul parametrului.
                textDirection: .ltr,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
