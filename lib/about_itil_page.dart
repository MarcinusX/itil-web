import 'package:flutter/material.dart';

import 'my_card.dart';

class AboutItilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dlaczego ITIL?'),
        centerTitle: true,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1200),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                MyCard(
                  title: 'Dlaczego ITIL?',
                  text: Text(par1),
                ),
                MyCard(
                  title: 'Korzyści',
                  text: Text(par2),
                ),
                MyCard(
                  title: 'Mity',
                  text: Text(par3),
                ),
                MyCard(
                  title: 'O czym warto wiedzieć',
                  text: Text(par4),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String par1 = '''
Zasady ITIL pozwalają właściwie kształtować procesy w firmie. Sukces w ich wdrożeniu wymaga elastyczności i traktowania biblioteki ITIL jako zbioru wskazówek, a nie gotowego modelu.

Badania Gartnera pokazują, że 60% firmowych wydatków na IT pochłaniają infrastruktura i operacje, a niemal połowa pracowników działów IT zajmuje się codziennymi, taktycznymi procesami. Wprowadzenie ITIL pozwala podnieść wydajność biznesową przedsiębiorstwa nawet o 80%.

Stworzenie jednolitej kultury procesowej i wypracowanie metod zarządzania usługami IT, które pozwolą maksymalnie wykorzystać zasoby ludzkie oraz infrastrukturę, jest jednym z największych wyzwań dla działów IT. ITIL (Information Technology Infrastructure Library) to zapoczątkowana w latach 80. XX wieku w Wielkiej Brytanii idea stworzenia zbioru dobrych praktyk, dotyczących usług informatycznych. Określana jest mianem biblioteki, kodeksu czy zbioru zaleceń, które obejmują całościowe spojrzenie na informatykę, porządkując całą organizację, co zapewnia spójne spojrzenie na jej funkcjonowanie.

Głównym założeniem ITIL jest podniesienie efektywności i skuteczności w oferowaniu usług IT. Powstałe na potrzeby użytkowników publikacje z zakresu ITIL obejmują takie obszary, jak:
- Service Strategy (SS) - strategia;
- Service Design (SD) - projektowanie usług;
- Service Transition (ST) - wdrażanie usług;
- Service Operation (SO) - eksploatacja usług;
- Continual Service Improvement (CSI) - ciągła poprawa usług.
Składają się one na cykl życia usługi i stanowią jedno z najnowszych opracowań ITIL.

Biblioteka opiera się przede wszystkim na definiowaniu procesów, które powinny funkcjonować w obrębie organizacji świadczącej usługi IT - w ramach wyspecjalizowanego przedsiębiorstwa, firmowego działu IT czy agencji rządowej. Dzięki temu jest to zbiór uniwersalnych metod, pozwalających modelować procesy w organizacji bez względu na jej charakter czy wielkość. Podstawową zasadą ITIL jest zdefiniowanie ról i odpowiedzialności w obrębie każdego procesu.
  ''';
  String par2 = '''
ITIL pozwala przede wszystkim na:

1. Redukcję kosztów (do zarządzania IT podchodzimy jak do zarządzania biznesem);
2. Lepsze zarządzanie jakością (poprzez stałe doskonalenie organizacji);
3. Zwiększenie produktywności (w wyniku poprawy zagospodarowania zasobów i organizacji pracy);
4. Uporządkowanie organizacji (dzięki ustaleniu ról i odpowiedzialności);
5. Usprawnienie komunikacji (na co wpływa spójna koncepcja IT oraz uporządkowana struktura komunikacji);
6. Poprawę relacji z klientem (dzięki skupieniu uwagi na korzyściach dla biznesu, również w przypadku wewnętrznych działów IT).

Ponadto, dzięki wykorzystaniu biblioteki dobrych praktyk, równamy do najlepszych, bowiem jest ona stosowana w największych organizacjach na całym świecie i z biegiem czasu zyskuje popularność. Otrzymujemy także gotowy zbiór wskazówek, co pozwala unikać błędów popełnianych już przez innych.
  ''';

  String par3 = '''
Przez brak zrozumienia idei ITIL powstają mity, z których należy sobie zdawać sprawę, chcąc wykorzystać tę koncepcję we własnej organizacji.

MIT 1: wdrażanie ITIL
Biblioteka dobrych praktyk to nie produkt ani oprogramowanie. Nie można zatem jej wdrożyć czy zainstalować, choć niektóre firmy oferują oprogramowanie na bazie ITIL, co jednak nie jest zgodne z jej ideą. ITIL to zbiór wskazówek dotyczących sposobu zarządzania procesami, dzięki którym powinno zmienić się myślenie pracowników IT na temat świadczenia usług informatycznych.

MIT 2 : ITIL to złoty środek na problemy
Użytkownicy często traktują ITIL jako gotowy przepis, spójny model i schemat procesów, którego implementacja jest odpowiedzią na problemy firmy. Tak jednak nie jest. Wskazówki zawarte w bibliotece dobrych praktyk wyznaczają jedynie kierunki działań, które mają prowadzić do poprawy efektywności działów IT. Wskazują najczęstsze błędy i podpowiadają, jak ich unikać. Nie znajdziemy w niej konkretnych rozwiązań. Właściwa droga to poznanie zasad ITIL, a następnie dostosowanie ich do specyfiki organizacji, stworzenie własnych procedur i instrukcji.
  ''';

  String par4 = '''
ITIL powinny zainteresować się koniecznie firmy zmagające się z powtarzalnymi problemami, które pochłaniają czas i ograniczają rozwój przedsiębiorstwa. Myśląc o ITIL, warto przyjrzeć się obecnej sytuacji firmy. Przeprowadzając kalkulację kosztów związanych z inwestycją w szkolenie pracowników w tym zakresie, należy pamiętać o stratach finansowych spowodowanych marnotrawstwem czasu i nieefektywnym wykorzystaniem zasobów.

Aby dział IT pracował sprawnie z ITIL, kilka osób powinno mieć na ten temat pełną wiedzę i bogate doświadczenie. Tacy pracownicy stanowią trzon zespołu, tworzą i nadzorują procesy, które usprawniają. Nadzorują oni także pracę pozostałych członków zespołu. Reszta zespołu musi znać przynajmniej podstawy, aby terminologia i ogólne zasady postępowania były dla wszystkich jasne. Po zaadaptowaniu zasad określonych przez ITIL firma może uzyskać potwierdzenie zgodności z normą ISO/IEC 20000, która powstała w 2005 r. i formalizuje wymagania dotyczące zarządzania usługami informatycznymi.

Model ITIL opisuje funkcjonowanie całej organizacji, jednak próba zaadaptowania całej biblioteki praktyk to zadanie niewykonalne. Najpierw należy skupić się na zarządzaniu poziomem usług, zarządzaniu incydentem i funkcji service desk.

Podstawą poprawy skuteczności działań jest powiązanie IT z biznesem i właściwe postrzeganie potrzeb odbiorcy usługi. Z ostatnich badań firmy Forrester (2011) wynika, że ITIL ma pozytywny wpływ przede wszystkim na wydajność (85%), jakość usług (83%), ocenę pracy działów IT (65%) oraz na wygenerowanie oszczędności (41%). Według analityków wzrost świadomości przedsiębiorców na temat dobrych praktyk zarządzania usługami IT może spowodować, że wprowadzenie ITIL i innych tego typu praktyk stanie się standardem biznesowym, bez którego firma będzie tracić znaczenie na rynku.
  ''';
}
