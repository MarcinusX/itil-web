import 'package:flutter/material.dart';
import 'package:itil/service_support_page.dart';

import 'my_card.dart';

class SvsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Service Value System'),
        centerTitle: true,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1200),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                MyCard(
                  title: 'Co zawiera ITIL SVS?',
                  text: CenterText(par0),
                ),
                MyCard(
                  title: 'Koncept Systemu Wartości Usługi',
                  imageUrl:
                      'https://itsm.tools/wp-content/uploads/2019/04/post-8887-diagram-01.png',
                  imagePadding: EdgeInsets.only(left: 32),
                  text: Text(par1),
                ),
                MyCard(
                  title: 'Elementy SVS',
                  text: Column(
                    children: <Widget>[
                      CenterText(
                          'Szanse i popyt zasilają nasz System Wartości Usługi, ale nie oznacza to automatycznie że popyt zostanie zaspokojony a szanse wykorzystane.'),
                      SizedBox(height: 16),
                      Process(
                        title: 'Ład organizacyjny (Governance)',
                        text:
                            'Element ten opisuje mechanizmy ukierunkowywania i sterowania organizacją. Obejmuje określenie efektywnej struktury organizacyjnej i przypisanie odpowiedzialności za realizację strategii i polityk firmy. Wyznacza w ten sposób kierunki i priorytety dla aktywności organizacji. Następnie odpowiada za monitorowanie produktywności organizacji oraz regularne jej ocenianie.',
                      ),
                      Process(
                        title: 'Praktyki (practices)',
                        text:
                            'W podstawowym znaczeniu, proces to po prostu ciąg czynności – na przykład proces Zarządzania Incydentami to nic innego jak ciąg czynności, podejmowanych w celu rozwiązania incydentu – wykrycie, rejestracja, diagnoza, naprawa oraz poinformowanie użytkownika, że incydent rozwiązano. Podejście procesowe pomija jednak istotne elementy – kto i jakimi narzędziami zrealizuje te aktywności? „Praktyka” powinna więc być rozumiana jako zestaw zasobów (ludzi, narzędzi IT, wiedzy itd.), potrzebnych do zrealizowania aktywności procesu.',
                      ),
                      Process(
                        title: 'Wskazówki wiodące (Guiding principles)',
                        text:
                            'Wykorzystanie tych elementów ułatwi nam zestaw wskazówek. Są to uniwersalne i odporne na zachodzące w organizacji zmiany wytyczne, które pokazują dobre wzorce zachowań. Specjaliści Lean czy Agile znajdą tu wiele znajomych elementów: Focus on value, Progress iteratively with feedback etc.',
                      ),
                      Process(
                        title:
                            'Ustawiczne doskonalenie (Continual Improvement)',
                        text:
                            'Nadążanie za zmieniającymi się wymaganiami klienta i wyzwaniami ze strony konkurencyjnego otoczenia zapewni nam mechanizm Ustawicznego doskonalenia. Idea ta wywodzi się z prostej obserwacji – stworzenie spełniającej potrzeby interesariuszy usługi nie wystarczy. Należy zadbać o to, aby te potrzeby spełniać ustawicznie ponieważ stale się zmieniają.',
                      ),
                      Process(
                        title: 'Łańcuch wartości usługi (Service value chain)',
                        text:
                            'Łańcuch wartości usługi opisuje zestaw aktywności, które są podejmowane w celu zapewnienia realizacji wartości. Jest modelem operacyjnym, czyli wyobrażeniem tego w jaki sposób dostawca podejmuje aktywności, aby dostarczyć wartościowe usługi.',
                      ),
                    ],
                  ),
                ),
                MyCard(
                  title: 'Strumienie wartości',
                  text: Text(par2),
                  imageUrl: 'https://imgur.com/aMGft0E.png',
                  imageOnLeft: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String par0 = '''
Składa się z określonych danych wejściowych, elementów i wyników związanych z zarządzaniem usługami. Kluczowymi danymi wejściowymi do SVS są szanse i popyt, zaś wyniki SVS to wartość dostarczana przez produkty i usługi. Szansa odnosi się do opcji lub możliwości zwiększenia wartości dla interesariuszy lub w inny sposób poprawy organizacji.

Popyt odnosi się do zapotrzebowania na produkty i usługi wśród konsumentów wewnętrznych i zewnętrznych. Działania uruchamiające szanse i popyt w ramach ITIL SVS prowadzą do tworzenia wartości. Możliwości i popyt zawsze wchodzą do systemu, ale organizacja nie przyjmuje automatycznie wszystkich możliwości ani nie zaspokaja całego popytu.
''';
  String par1 = '''
Wartość (Value) – jest to postrzegana przez interesariusza korzyść, użyteczność bądź istotność czegoś.

Popyt (Demand) – to potrzeba czy pożądanie naszych produktów i usług, pochodzące od wewnętrznych i zewnętrznych klientów.

Szansa (Opportunity) – to możliwość zwiększenia wartości dla interesariuszy bądź wprowadzenie usprawnienia w naszej organizacji.

Wprowadzony w najnowszej wersji ITIL System Wartości Usługi (Service Value System) opisuje w jaki sposób poszczególne komponenty i aktywności dostawcy usługi współpracują ze sobą, aby w odpowiedzi na pojawiający się popyt (Demand) i szanse (Opportunity) kreować wartość (Value) dla interesariuszy.
''';

  String par2 = '''
Organizacja w pewnym momencie (lub nawet nieprzerwanie) przeprowadza następujące działania:

👉 Zaangażowanie (Engage): Interakcje z zewnętrznymi interesariuszami w celu uzgodnienia potrzeb, zapewnienia przejrzystości oraz wspierania dobrych relacji ze wszystkimi zaangażowanymi.

👉 Planowanie (Plan): Osiągnięcie zgody co do wizji, stanu obecnego oraz wskazówek jak ulepszać wszystkie cztery wymiary (four dimensions) i produkty.

👉 Ulepszanie (Improve): Zapewnienie ciągłego doskonalenia produktów, usług i praktyk  w ramach wszystkich aktywności związanych z łańcuchem wartości (value chain activities) oraz czterech wymiarów.

👉 Projektowanie i Przekazywanie (Design and Transition): Upewnienie się, że produkty i usługi są zgodne z oczekiwaniami interesariuszy co do jakości, kosztów oraz czasu dostarczenia na rynek (time to market).

👉 Pozyskiwanie i Rozwijanie (Obtain/ Build): Zapewnienie, że wszystkie elementy usługi (service components) są dostępne wtedy i tam, gdzie są potrzebne oraz że spełniają uzgodnione specyfikacje.

👉 Dostarczanie i Wspieranie (Deliver and Support): Zapewnienie, że usługi są dostarczane i wspierane zgodnie z uzgodnionymi specyfikacjami i oczekiwaniami.

Powyższe działania można połączyć i zintegrować na wiele sposobów, odbywając podróż strumieniem wartości (value stream) od popytu do wartości przez dostawcę usług. 

Strumienie wartości (Value Streams) można definiować na każdym poziomie organizacji. Mogą one zatem występować na poziomie firmy oraz zupełnie osobno (chociaż w ostatecznym powiązaniu) na poziomach poszczególnych zespołów rozwoju lub wsparcia (development or support team).

Strumień wartości jest kombinacją aktywności Łańcucha Wartości Usługi. Należy w jego kontekście pamiętać o dwóch kluczowych kwestiach:

✅ Aktywności strumienia wartości (Value chain activities) mogą się powtarzać. Przykładowo, aby strumień wartości mógł obsłużyć incydenty (customer incidents), na początku musiałby zaistnieć kontakt z klientem, czyli Zaangażowanie (Engage) – numer 1 w powyższym przykładzie. Kolejne  Zaangażowanie musi wystąpić na końcu strumienia (numer 6) – sprawdzanie poprawności rozwiązania i satysfakcji klienta. Poza tym mogą się również pojawić dodatkowe czynności typu Zaangażowanie, pokazujące post-incydentalne rozmowy oraz ankiety poświęcone satysfakcji klienta.

✅ Strumienie wartości ZAWSZE rozpoczynają się od popytu (Demand) i ZAWSZE kończą na wartości (Value). Celem strumienia wartości jest zmiana popytu w wartość.

''';
}
