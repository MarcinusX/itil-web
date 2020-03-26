import 'package:flutter/material.dart';

import 'my_card.dart';

class LifecyclePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cykl życia usług ITIL'),
        centerTitle: true,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1200),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                MyCard(
                  imageOnLeft: false,
                  title: 'Cykl życia usług ITIL',
                  imageUrl:
                      'https://i0.wp.com/www.certguidance.com/wp-content/uploads/2017/09/itil-processes-Lifecycle-171hue-310px.png',
                  text: CenterText(par0),
                ),
                MyCard(
                  title: 'Service Strategy (Strategia usług)',
                  text: Text(par1),
                  imageUrl:
                      'https://www.invensislearning.com/frontend/images/resources/the-process-areas-of-service-strategy.png',
                ),
                MyCard(
                  imageOnLeft: false,
                  title: 'Service Design (Projektowanie usług)',
                  imageUrl: 'https://i.imgur.com/md2GeyB.png',
                  text: Text(par2),
                ),
                MyCard(
                  title: 'Service Transition (Przekazanie usług)',
                  imageUrl: 'https://i.imgur.com/bbpbQK1.png',
                  text: Text(par3),
                ),
                MyCard(
                  imageOnLeft: false,
                  title: 'Service Operation (Eksploatacja usług)',
                  imageUrl: 'https://i.imgur.com/fk1PwPK.png',
                  text: Text(par4),
                ),
                MyCard(
                  title:
                      'Continual Service Improvement\n(Ustawiczne doskonalenie usług)',
                  imagePadding: EdgeInsets.only(left: 32, top: 32, bottom: 32),
                  imageUrl: 'https://i.imgur.com/omMYgZf.png',
                  text: Text(par5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String par0 = '''
Biblioteka ITIL została skonstruowana wokół idei cyklu życia usługi. Nowe wymagania biznesowe skutkują nowymi usługami, wprowadzane są poprawki do obecnie świadczonych usług, poprawiane są w nich błędy, aktywnie szuka się możliwości poprawy jakości usług i obniżenia kosztów ich dostarczania – to wszystko sprawia, że mechanizm cyklu życia usługi jest w ciągłym ruchu.

Na cykl życia usługi składa się pięć etapów :
👉 Service Strategy (Strategia usług)
👉 Service Design (Projektowanie usług)
👉 Service Transition (Przekazanie usług)
👉 Service Operation (Eksploatacja usług)
👉 Continual Service Improvement (Ustawiczne doskonalenie usług)
''';
  String par1 = '''
Proces Zarządzania strategią dla usług informatycznych (Strategy Management for IT Services) odpowiada za definiowanie i utrzymanie czterech kluczowych elementów strategii, a więc: perspektywy strategicznej dostawcy usług informatycznych (czyli jego misji i wizji), pozycji strategicznej, która odróżnia go od innych dostawców na rynku, planów strategicznych zorganizowania komponentów usług niezbędnych do ich świadczenia, powtarzalnych wzorców organizacji (patterns) w odniesieniu do usług i zarządzania tymi usługami.

Etap Strategii usług wymaga przede wszystkim uporządkowania zasad zarządzania usługami w trakcie ich cyklu życia, od stworzenia pierwszej koncepcji, aż po śmierć, czyli wycofanie z eksploatacji. Tym zajmuje się proces Zarządzania portfelem usług (Service Portfolio Management) 

Zagadnieniami finansowymi usług informatycznych zajmuje się proces Zarządzania finansowego usługami IT (Financial Management for IT Service). Proces obejmuje budżetowanie, księgowanie i naliczanie opłat.

Kolejny proces w obszarze Strategii usług to Zarządzanie popytem (Demand Management). Jego celem jest zrozumienie wzorców zachowań klienta, wpływanie na popyt na usługi informatyczne, np. za pomocą ceny, oraz dostarczanie pojemności i wydajności, pozwalającej zaspokoić ten popyt.

W tym ostatnim zadaniu ściśle współpracuje z procesem Zarządzania potencjałem wykonawczym(Capacity Management).

Elementem strategii dostawcy usług informatycznych jest również Zarządzanie relacjami z biznesem (Business Relationship Management), dbanie o stałe, indywidualne, partnerskie relacje z klientami, poznanie ich potrzeb, sposobu postrzegania usług informatycznych i ich wartości oraz dbanie o satysfakcję klientów.
''';

  String par2 = '''
Jednym z kluczowych procesów w modelu ITIL jest Zarządzanie poziomem świadczenia usług (Service Level Management, SLM). Proces SLM odpowiada za negocjowanie umów SLA (Service Level Agreement), oraz zapewnia że umowy te są realizowane. SLA to umowa zawarta pomiędzy dostawcą usług informatycznych a klientem. Umowa SLA opisuje usługę informatyczną, definiuje jej jakość w postaci konkretnych celów oraz określa obowiązki wszystkich stron umowy.

Proces Zarządzania poziomem usług jest interfejsem do klienta. Oferta, którą przedstawia i negocjuje musi być przedstawiona w języku zrozumiałym dla biznesu. Pomocą służy proces Zarządzania katalogiem usług (Service Catalogue Management ), zapewniający jedno spójne źródło informacji o aktualnej ofercie dostawcy usług informatycznych.

Z drugiej strony, proces Zarządzania poziomem usług kontaktuje się także z dostawcami technologii informatycznej, aby zapewnić wsparcie dla usług oczekiwanych przez biznes. Szuka najtańszych i najlepszych dostawców na rynku. W tym zadaniu jest wspierany przez proces Zarządzania dostawcami (Supplier Management), który zapewnia, że wszystkie kontrakty z dostawcami wspierają potrzeby biznesu, oraz że wszyscy dostawcy wypełniają zobowiązania ze swoich kontraktów. Analizując wartość jaką usługa przynosi klientowi można dostrzec dwa kryteria - Użyteczność i Gwarancję.

Proces Zarządzania dostępnością (Availability Management) odpowiada za dostarczanie, analizę, planowanie, mierzenie i doskonalenie wszystkich aspektów związanych z dostępnością usług informatycznych. Przez dostępność usługi rozumie się zdolność usługi do pełnienia swojej uzgodnionej funkcji, w oknie świadczenia usługi zdefiniowanym w umowie SLA.

Proces Zarządzania potencjałem wykonawczym (Capacity Management) odpowiada za to, by pojemność i wydajność usług informatycznych i infrastruktury IT zapewniała dostarczenie uzgodnionego w umowie poziomu usługi w sposób efektywny kosztowo i w odpowiednim czasie. Przez potencjał wykonawczy należy rozumieć np. czas trwania transakcji, przepustowość sieci, liczbę użytkowników mogących jednocześnie pracować w systemie, dostępną przestrzeń dyskową, itp.

Dostawca usług informatycznych, nawet w przypadku katastrofy, czyli zdarzenia o niewielkim prawdopodobieństwie, ale generującym duże koszty lub straty, a czasem powodującym nieodwracalne skutki, powinien móc zawsze zapewnić świadczenie swoich usług na minimalnym poziomie uzgodnionym w umowie SLA. Jest to zadanie dla procesu Zarządzanie ciągłością usług IT (IT Service Continuity Management). 

Proces Koordynacja projektowania (Design Coordination) odpowiada za koordynację wszystkich działań projektowania usługi, procesów i zasobów. Koordynacja projektowania usługi zapewnia spójne i skuteczne projektowanie nowych lub zmienionych usług IT i wszystkich elementów potrzebnych do jej dostarczania – systemów zarządzania usługami, architektury, technologii, procesów, informacji i miar.
''';

  String par3 = '''
W trakcie przekazywania usług do eksploatacji sprawdza się, czy realizują one wymagania zdefiniowane przez klienta oraz czy możliwe jest zapewnienie poziomu usługi gwarantowanego klientowi w umowie SLA.
 
Proces Planowania i wsparcia przekazania (Transition Planning and Support) odpowiada za właściwe zaplanowanie wszystkich procesów fazy Przekazania usług i koordynację zasobów, których te procesy wymagają.

Proces Zarządzania komponentami usług i konfiguracją (Service Asset and Configuration Management) dostarcza precyzyjnych informacji o zasobach i relacjach je łączących. Dostarcza model logiczny infrastruktury informatycznej, powiązanych usług informatycznych oraz komponentów koniecznych do dostarczania usług.

Proces Zarządzania Wydaniami i wdrożeniami (Release and Deployment Management) odpowiada za planowanie i kontrolę przekazania nowej wersji usługi do środowiska testowego i produkcyjnego.

Za zgodność usługi informatycznej ze specyfikacją projektową i potrzebami biznesowymi, włączając w to zapisy umowy SLA, odpowiada proces Weryfikacji i testowania usług (Service Validation and Testing).

Proces Oceny zmian (Change Evaluation) zapewnia spójne i standardowe metody ewaluacji zmiany. Wprowadzane zmiany są oceniane i porównywane z oczekiwanym działaniem, a wszystkie odchylenia są analizowane i zarządzane. Proces Oceny wspiera Zarządzanie zmianami w podjęciu odpowiedniej decyzji : czy zatwierdzić, czy może odrzucić proponowaną zmianę w usłudze.

W trakcie etapu Przekazania usługi do eksploatacji gromadzona jest wiedza przydatna później podczas eksploatacji usługi. Zajmuje się tym proces Zarządzania wiedzą (Knowledge Management). Odpowiada za zbieranie, analizę, przechowywanie oraz udostępnianie wiedzy i informacji w organizacji. Kluczowym produktem procesu jest System zarządzania wiedzą o usługach (Service Knowledge Management System), czyli zestaw narzędzi oraz baz danych wykorzystywanych do zarządzania wiedzą i informacjami.
''';

  String par4 = '''
Każda nieplanowana przerwa lub obniżenie jakości usługi jest nazywane incydentem. Proces Zarządzania incydentami (Incident Management) odpowiada za przywrócenie normalnego działania usługi w jak najkrótszym czasie oraz minimalizację negatywnego wpływu incydentu na działanie biznesu. Normalne działanie usługi jest zdefiniowanie w umowie SLA.

Incydenty są kategoryzowane w taki sposób by określić, kto powinien dalej nad nimi pracować, a także w celu późniejszej analizy trendów. Zostają również ustalone priorytety incydentów, zgodnie z ich pilnością oraz wpływem na biznes. Część incydentów zgłaszają użytkownicy kontaktując się z Service Deskiem. Incydenty są też często wykrywane przez proces odpowiadający za monitorowanie usług informatycznych i infrastruktury IT – Zarządzania zdarzeniami (Event Management).

Kolejny proces operacyjny to Zarządzanie uprawnieniami dostępu (Access Management). Umożliwia on upoważnionym użytkownikom dostęp do usług informatycznych, danych lub innych zasobów oraz uniemożliwia ten dostęp użytkownikom do tego nieupoważnionym. W tandemie z procesem Zarządzania incydentami pracuje proces Zarządzania problemami (Problem Management). Problem to nieznana przyczyna jednego lub wielu incydentów. Problemy są kategoryzowane w podobny sposób jak incydenty, jednak celem tej kategoryzacji jest zrozumienie źródłowych przyczyn incydentów, dokumentowanie obejść (workarounds) oraz wniosków o zmianę tak, by usunąć problem permanentnie.

Pierwszą linią wsparcia i jedynym punktem kontaktu dla użytkowników jest funkcja Service Desk. Zajmuje się ona przede wszystkim:
👉 Rejestracją wszystkich incydentów i wniosków o usługę;
👉 Nadawaniem kategorii zgłoszeniom;
👉 Określaniem ich priorytetów;
👉 Rozwiązywaniem tych incydentów i wniosków o usługę, które jest w stanie rozwiązać;
👉 Eskalowaniem incydentów i wniosków o usługę, tak by mogły być rozwiązane w czasie gwarantowanym w umowie SLA;
👉 Informowaniem użytkowników o postępach prac;
👉 Zamykaniem rozwiązanych incydentów i wniosków o usługę
''';
  String par5 = '''
Cykl życia usługi dopełnia etap Ustawicznego doskonalenia usług. Zajmuje się on oceną i poprawą:
👉 Jakości usług;
👉 Ogólnej dojrzałości cyklu życia usługi;
👉 Procesów IT;
👉 Raportowaniem usług (Service Reporting) i ich doskonaleniem.

Koordynowane  są  tu  wszystkie  działania  związane  z Mierzeniem  usług  (Service	Measurement),

W tym celu ITIL definiuje 7 - stopniowy proces doskonalenia (The 7 - Step Improvement Process).
''';
}
