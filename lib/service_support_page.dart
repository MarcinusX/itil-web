import 'package:flutter/material.dart';

import 'my_card.dart';

class ServiceSupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Service support'),
        centerTitle: true,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1200),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Card1(),
                Card2(),
                Card3(),
                Card4(),
                Card5(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Process extends StatelessWidget {
  final String title;
  final String text;

  const Process({Key key, this.title, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CenterText(title, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 4),
        CenterText(text),
        SizedBox(height: 16),
      ],
    );
  }
}

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyCard(
      title: 'Service Desk i zarządzanie incydentami',
      text: Column(
        children: <Widget>[
          CenterText(
              'Proces „Service Desk i zarządzanie incydentami” ma na celu jak najszybsze przywrócenie usług IT do zdefiniowanych poziomów usług. Proces ten jest również odpowiedzialny za przyjmowanie i przetwarzanie zgłoszeń serwisowych, pomoc użytkownikom oraz koordynację rozwiązywania incydentów ze specjalistą grupy wsparcia. W trakcie całego procesu użytkownicy są regularnie informowani o statusie Incydentów.'),
          SizedBox(height: 8),
          CenterText(
              'Właściciel procesu: Menedżer incydentów\nZaangażowane role: Menedżer incydentów, 1-2-3 linie wsparcia'),
          SizedBox(height: 8),
          CenterText('Podprocesy:', style: TextStyle(fontSize: 18)),
          SizedBox(height: 16),
          Process(
            title: 'Rejestracja zdarzenia',
            text:
                'Incydent należy zarejestrować i udokumentować w odpowiedniej jakości, aby ułatwić szybkie i skuteczne rozwiązanie',
          ),
          Process(
            title: 'Przetwarzanie zgłoszenia serwisowego',
            text:
                'Incydent typu zgłoszenie serwisowe musi zostać całkowicie przetworzone w uzgodnionym czasie rozwiązania.',
          ),
          Process(
            title:
                'Natychmiastowe rozwiązywanie incydentów przez 1 linię wsparcia',
            text:
                'Incydent typu przerwanie usługi ma zostać rozwiązany w uzgodnionym okresie rozwiązania. Celem jest szybkie przywrócenie usługi IT, w razie potrzeby za pomocą obejścia. Rozwiązaniem jest, w miarę możliwości, pierwsza próba wsparcia 1 linii; jeśli nie jest to możliwe, Incydent zostaje przeniesiony do odpowiedniej grupy w ramach 2 linii wsparcia.',
          ),
          Process(
            title:
                'Analiza i rozwiązywanie incydentów w ramach 2 linii wsparcia',
            text:
                'Jeśli to możliwe, podstawową przyczynę przerwania usługi należy skorygować lub zastosować przynajmniej obejście. Jeśli korekta pierwotnej przyczyny nie jest możliwa, tworzony jest zapis problemu, a korekcja błędu przekazywana do zarządzania problemami.',
          ),
          Process(
            title: 'Monitorowanie i eskalacja incydentów',
            text:
                'Status przetwarzania zaległych Incydentów musi być stale monitorowany, aby środki zaradcze mogły zostać wprowadzone jak najszybciej, jeśli istnieje prawdopodobieństwo przekroczenia poziomu usług.',
          ),
          Process(
            title: 'Proaktywne informowanie użytkowników',
            text:
                'Użytkownicy powinni być informowani o szkodach dla usług IT, gdy tylko zostaną o tym poinformowani Service Desk. Użytkownicy mogą następnie dostosować się do przerw, a liczba zapytań użytkowników jest zmniejszona.',
          ),
          Process(
            title: 'Zamknięcie i ocena incydentów',
            text:
                'Przed ostatecznym zamknięciem incydentu należy go poddać kontroli jakości w odniesieniu do rozwiązania. Ponadto ustalenia z rozwiązania zdarzenia zostaną zapisane w przyszłości.',
          ),
          Process(
            title: 'Utrzymanie bazy wiedzy wsparcia',
            text:
                'Ustalenia z przetwarzania zdarzeń, a także informacje z innych procesów zarządzania usługami należy włączyć do bazy wiedzy wsparcia w uporządkowany i zapewniający jakość sposób, aby przyszłe zdarzenia mogły być bardziej wydajnie przetwarzane.',
          ),
          Process(
            title: 'Wykonanie raportowanie zarządzania incydentami',
            text:
                'Należy upewnić się, że potencjał poprawy wynika z przeszłych incydentów, oraz  inne procesy zarządzania usługami mają niezbędne informacje z zarządzania incydentami, które są wymagane do wypełnienia ich zadań.',
          ),
        ],
      ),
    );
  }
}

class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyCard(
      title: 'Problem Management',
      text: Column(
        children: <Widget>[
          CenterText(
            'Celem zarządzania problemami jest usunięcie pierwotnej przyczyny incydentów i zapobieganie ponownemu wystąpieniu incydentów związanych z tymi błędami. Zapewnia zarządzanie incydentami dzięki tymczasowym rozwiązaniom (obejściom) i stałym rozwiązaniom znanych błędów. Proaktywne zarządzanie problemami identyfikuje i rozwiązuje problemy przed wystąpieniem incydentów, na przykład poprzez analizę trendów w korzystaniu z usług IT lub badanie historycznych incydentów.',
          ),
          SizedBox(height: 8),
          CenterText(
            'Właściciel procesu: Menedżer problemów\nZaangażowane role: Menedżer aplikacji, Menedżer infrastruktury IT, Menedżer problemów',
          ),
          SizedBox(height: 8),
          CenterText('Podprocesy:', style: TextStyle(fontSize: 18)),
          SizedBox(height: 16),
          Process(
            title: 'Identyfikacja i analiza problemu',
            text:
                'Przeszłe incydenty i inne oznaki problemów w infrastrukturze IT mają zostać przeanalizowane, aby znaleźć podstawowe przyczyny powtarzających się przerw w świadczeniu usług IT.',
          ),
          Process(
            title: 'Monitorowanie problemów i błędów',
            text:
                'Nierozstrzygnięte problemy należy stale monitorować pod kątem ich statusu przetwarzania, aby w razie potrzeby można było wprowadzić środki naprawcze. Ponadto należy sprawdzić, czy problemy oznaczone jako zamknięte zostały rzeczywiście wyeliminowane.',
          ),
          Process(
            title: 'Opracowanie rozwiązania problemu',
            text:
                'Po zatwierdzeniu zmiany należy opracować faktyczną korekcję błędów, a następnie przekazać ją do zarządzania zwolnieniami w celu wdrożenia.',
          ),
          Process(
            title: 'Zamknięcie problemu',
            text:
                'Po udanym rozwiązaniu problemu należy zapewnić, że zdobyta wiedza zostanie udostępniona innym procesom zarządzania usługami IT, aby można je było wykorzystać do obsługi przyszłych problemów lub incydentów.',
          ),
          Process(
            title: 'Kompilacja i  raportowanie zarządzania problemami',
            text:
                'Należy upewnić się, że inne procesy zarządzania usługami IT, a także zarządzanie IT, są informowane o nierozwiązanych problemach, ich statusie przetwarzania i istniejących obejściach',
          ),
        ],
      ),
    );
  }
}

class Card3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyCard(
      title: 'Change Management',
      text: Column(
        children: <Widget>[
          CenterText(
            'W zarządzaniu zmianami wszystkie zmiany w infrastrukturze IT i jej komponentach (elementach konfiguracji) są autoryzowane i dokumentowane, aby zapewnić ograniczenie do minimum wpływu na działanie programu. Etapy wdrażania są planowane i przekazywane, aby jak najwcześniej rozpoznać potencjalne skutki uboczne. Menedżer zmian i Rada Doradcza ds. Zmian (CAB) ponosi za to odpowiedzialność. W nagłych przypadkach istnieje specjalna procedura dotycząca pilnych zmian.',
          ),
          SizedBox(height: 8),
          CenterText(
            'Właściciel procesu: Menedżer zmian\nZaangażowane role: Menedżer zmian, Menedżer konfiguracji, Change Advisory Board(CAB), Emergency Committee (EC), Menedzer wydań',
          ),
          SizedBox(height: 8),
          CenterText('Podprocesy:', style: TextStyle(fontSize: 18)),
          SizedBox(height: 16),
          Process(
            title: 'Ustanowienie zasad obsługi zmian standardowych',
            text:
                'Należy ustanowić reguły, które wyraźnie określają dla organizacji IT, które zmiany mogą być wprowadzone bez poddawania się procesowi zarządzania zmianami. W tym celu określa się również, w jaki sposób obsługiwane są te zmiany tzw. „zmiany standardowe”.',
          ),
          Process(
            title: 'Dokonanie wstępnej oceny RFC(request for change)',
            text:
                'Należy upewnić się, że tylko RFC(wniosek o zmianę), które są zgodne z określonymi wymaganiami jakości, są akceptowane  procesie zarządzania zmianą.',
          ),
          Process(
            title: 'Zarejestrowanie i sklasyfikowanie zmiany',
            text:
                'Rejestracja i kategoryzacja RFC/zmian, tak aby tylko udokumentowane RFC uzyskały dostęp do procesu i zostały przypisane do właściwego i odpowiedniego organu (Menedżer zmian, CAB lub EC).',
          ),
          Process(
            title: 'Zezwolenie na zmiany przez Menedżera zmian',
            text:
                'Zatwierdzenie lub odrzucenie zmiany, a także wstępne planowanie i włączenie do FSC (Prześlij harmonogram zmian).',
          ),
          Process(
            title: 'Zorganizowanie spotkania CAB',
            text:
                'Zezwolenie lub odrzucenie zmiany, oprócz wstępnego planowania i włączenia do FSC (Prześlij harmonogram zmian).',
          ),
          Process(
            title: 'Grupowe zmiany w wydaniu',
            text:
                'Zatwierdzone zmiany należy zgrupować w wersje; zezwolenie na wdrożenie zostanie wydane przez zarządzanie zmianami.',
          ),
          Process(
            title: 'Ocena zmiany (przegląd po wdrożeniu)',
            text:
                'Ocena procesu i wyników wdrożenia zmiany, dzięki czemu dostępna jest pełna dokumentacja do późniejszego wykorzystania, a na podstawie ewentualnych błędów można wyciągnąć wnioski.',
          ),
          Process(
            title:
                'Postępowanie w trybie pilnym przez komisję nadzwyczajną (KE)',
            text:
                'Najszybsze możliwe zatwierdzenie lub odrzucenie pilnej zmiany, która ma służyć zwalczaniu sytuacji awaryjnej.',
          ),
        ],
      ),
    );
  }
}

class Card4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyCard(
      title: 'Release Management',
      text: Column(
        children: <Widget>[
          CenterText(
            'Zarządzanie wersjami jest centralnym organem odpowiedzialnym za wdrażanie zmian w infrastrukturze informatycznej, dzięki czemu są one przeprowadzane w sposób skuteczny, bezpieczny i weryfikowalny. Do ich zadań należy planowanie, monitorowanie i wdrażanie odpowiednich rolloutów lub rollinsów w koordynacji z zarządzaniem zmianami.',
          ),
          SizedBox(height: 8),
          CenterText(
            'Właściciel procesu: Menedżer wydań\nZaangażowane role: Menedżer aplikacji, Menedżer infrastruktury ITC,Menedżer wydań, Menedżer testów i QS',
          ),
          SizedBox(height: 8),
          CenterText('Podprocesy:', style: TextStyle(fontSize: 18)),
          SizedBox(height: 16),
          Process(
            title: 'Zaplanowanie wdrożenia',
            text:
                'Szczegółowe planowanie wdrożenia i opracowanie niezbędnych koncepcji technicznych dla dystrybucji wydania.',
          ),
          Process(
            title: 'Opracowanie procedury dystrybucji i wycofywania',
            text:
                'Opracowanie technicznych lub organizacyjnych procedur dystrybucji nowych komponentów wydań, a także rozwiązań wycofujących w przypadku nieprzewidzianych problemów.',
          ),
          Process(
            title: 'Wersja testowa',
            text:
                'Komponenty wersji oraz procedury dystrybucji i wycofywania należy poddać realistycznemu testowi, aby można było podjąć uzasadnioną decyzję dotyczącą dalszego wdrażania.',
          ),
          Process(
            title: 'Przeprowadzenie wdrożenia',
            text:
                'Wdrożenie komponentów wersji do produktywnego środowiska IT i zapewnienie pomyślnego wdrożenia.',
          ),
        ],
      ),
    );
  }
}

class Card5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyCard(
      title: 'Configuration Management',
      text: Column(
        children: <Widget>[
          CenterText(
            'Informacje o infrastrukturze i usługach niezbędne do zarządzania usługami IT są udostępniane przez program Configuration Management. Zmiany są dokumentowane, a aktualny status informacji jest regularnie sprawdzany. Dzięki temu zaktualizowane i historyczne informacje dotyczące elementów konfiguracji (CI-continous integration) są stale dostępne w bazie danych Configuration Management Database (CMDB).',
          ),
          SizedBox(height: 8),
          CenterText(
            'Właściciel procesu: Menedżer konfiguracji\nZaangażowane role: 1 linia wsparcia, Menedżer aplikacji, Manager konfiguracji, Menedżer infrastruktury ITC',
          ),
          SizedBox(height: 8),
          CenterText('Podprocesy:', style: TextStyle(fontSize: 18)),
          SizedBox(height: 16),
          Process(
            title: 'Zdefiniuj i zaktualizuj strukturę CMDB',
            text:
                'Struktura CMDB musi zostać zdefiniowana i zaktualizowana w taki sposób, aby mogła przechowywać niezbędne informacje związane z elementami CI, w tym ich atrybutami i relacjami.',
          ),
          Process(
            title: 'Zidentyfikowanie i udokumentowanie statusu CI',
            text:
                'Przeprowadzanie aktualizacji w CMDB w reakcji na zmiany w infrastrukturze IT, dzięki czemu są one zawsze dokładnym odwzorowaniem rzeczywistych zainstalowanych elementów CI.',
          ),
          Process(
            title: 'Przeprowadzenie audytów CMDB',
            text:
                'Regularne sprawdzanie zawartości CMDB, tak aby stale stanowiły dokładne odwzorowanie faktycznie zainstalowanych elementów CI.',
          ),
          Process(
            title: 'Informacje o dostawie dotyczące elementów CI',
            text:
                'Udostępnienie informacji dotyczących elementów CI zgodnie z wymaganiami innych procesów zarządzania usługami IT.',
          ),
        ],
      ),
    );
  }
}
