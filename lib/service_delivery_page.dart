import 'package:flutter/material.dart';

import 'my_card.dart';

class ServiceDeliveryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Service delivery'),
        centerTitle: true,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1200),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                MyCard(
                  title: 'Czym jest Service Delivery?',
                  text: CenterText(par0),
                ),
                MyCard(
                  title: 'Service Level Management',
                  text: Text(par1),
                ),
                MyCard(
                  title: 'Capacity Management',
                  text: Text(par2),
                ),
                MyCard(
                  title: 'Availability Management',
                  text: Text(par3),
                ),
                MyCard(
                  title: 'IT Service Continuity Management',
                  text: Text(par4),
                ),
                MyCard(
                  title: 'Financial Management for IT Services',
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
Service Delivery i Service Support to jedne z najbardziej znanych obszarów ITIL v2, gdzie procesy są dzielone na obszary zarządzania usługami.

Service Delivery to procesy taktyczne, koncentrujące się na planowaniu dostarczaniu usług IT oraz poprawie ich jakości. Stanowią one podstawę w  zabezpieczeniu świadczonych usług.
 
Składają się na nie następujące procesy:
👉 Service Level Management,
👉 Capacity Management,
👉 Availability Management,
👉 IT Service Continuity Management,
👉 Financial Management for IT Services.
''';
  String par1 = '''
Proces Service Level Management odpowiedzialny jest za negocjowanie, możliwych do osiągnięcia umów Service Level Agreement (SLA), czyli umów o gwarantowanym poziomie świadczenia usług pomiędzy Odbiorcą a Usługodawcą, a następnie zapewnienie, czy jest ono realizowane.

Proces ten odpowiedzialny jest za zapewnienie również tego, by wszystkie procesy zarządzania usługami IT (ITSM), umowy OLA (o gwarantowanym poziomie wsparcia) oraz kontrakty z dostawcami zewnętrznymi (UC) były zgodne z uzgodnionymi docelowymi poziomami świadczenia usług. SLM monitoruje i raportuje poziomy usług, przeprowadza regularne przeglądy z Odbiorcą Usług oraz identyfikuje wymagane usprawnienia.
''';

  String par2 = '''
Capacity Management (Zarządzanie Potencjałem Wykonawczym) – proces odpowiedzialny za spełnienie ustalonych wymagań potencjału wykonawczego usług IT oraz infrastruktury IT w odpowiednim czasie, dotrzymując efektywności kosztowej. Proces ten uwzględnia wszystkie zasoby wymagane do świadczenia usług IT oraz dba o spełnienie obecnych i przyszłych potrzeb biznesu. Zarządzanie Potencjałem Wykonawczym zawiera trzy podprocesy:
👉 Business Capacity Management (Zarządzanie Potencjałem Wykonawczym Biznesu),
👉 Service Capacity Management (Zarządzanie Potencjałem Wykonawczym Usług),
👉 Component Capacity Management (Zarządzanie Potencjałem Wykonawczym Komponentów).
Procesy te korzystają z CMIS (Capacity Management Information System), czyli zestawu narzędzi, danych i informacji, które dalej używane są do wsparcia tych procesów.
 
BCM opisuje czynności mające na celu rozpoznanie przyszłych wymagań biznesu i uwzględnienie ich w planie Potencjału Wykonawczego (Zdolności Wykonawczej).
 
SCM odpowiada za zrozumienie wydajności i potencjału wykonawczego usług IT. Informacje o zużyciu zasobów przez każdą usługę informatyczną oraz wzór ich użycia w jednostce czasu są zbierane, rejestrowane i analizowane w celu użycia do planowania zarządzania potencjałem wykonawczym.
 
CCM jest to podproces w Capacity Managemencie, odpowiedzialny za zrozumienie zdolności wykonawczej (capacity), użycia (utilization) i jakości (performance) elementu konfiguracji (configuration item). Dane są zebrane, zapisane i analizowane, aby mogły zostać użyte w planie zarządzania zdolnością wykonawczą.
 
Ważną częścią Capacity Managementu jest dobry Capacity Plan, czyli czynności w ramach Procesu Zarządzania Potencjałem Wykonawczym wykonywane w celu stworzenia planu zarządzania Potencjałem Wykonawczym. W tymże planie istotne jest uwzględnienie takiego aspektu, jak Demand Management, czyli Zarządzanie Popytem. Demand Management odpowiada za zrozumienie, przewidywanie i wpływanie na popyt odbiorcy usług.
''';

  String par3 = '''
Availability Management (Zarządzanie Dostępnością) – proces odpowiedzialny za zapewnienie, że usługi IT spełniają obecne i przyszłe potrzeby biznesowe w zakresie dostępności, w sposób efektywny kosztowo i w odpowiednim czasie. Zarządzanie Dostępnością definiuje, analizuje, planuje, mierzy i doskonali wszystkie aspekty związane z dostępnością usług IT oraz zapewnia, że cała infrastruktura, procesy, narzędzia, role itd. są właściwe dla uzgodnionego docelowego poziomu świadczenia usługi (SLA) w zakresie dostępności.

Proces ten korzysta z AMIS (Availability Management Information System), czyli zestawu narzędzi, danych i informacji, które dalej używane są do wsparcia tego procesu.

W procesie tym wykorzystuje się mechanizmy szacowania, czyli, na podstawie doświadczenia organizacji, określenia przybliżonej wartości miary liczbowej lub kosztów. Jest to najtańsza, ale najmniej dokładna metoda modelowania.
''';

  String par4 = '''
IT Service Continuity Management (Zarządzanie Ciągłością Świadczenia Usług Informatycznych) – proces odpowiedzialny za zarządzanie ryzykiem, które mogłoby poważnie wpłynąć na usługi IT. Zapewnia, aby dostawca usług IT mógł zawsze dostarczać minimalny uzgodniony poziom usług, dzięki redukcji ryzyka do akceptowalnego poziomu oraz dzięki planowaniu działań koniecznych do przywrócenia usług IT.

Zarówno w Zarządzaniu Dostępnością, jak i w ITSCM, istotne jest zrozumienie pojęcia zagrożenia (threat). Zagrożenie jest czymkolwiek, co może wykorzystać podatność (exploit a vulnerability). Zagrożeniem może być każda potencjalna przyczyna powstania incydentu, na przykład – kradzież danych jest zagrożeniem, które wykorzysta podatność słabych zabezpieczeń systemów IT.
''';
  String par5 = '''
Financial Management for IT Services (Zarządzanie Finansowe Usługami Informatycznymi) – funkcja i procesy odpowiedzialne za zarządzanie wymaganiami dostawcy usług IT dotyczącymi: budżetowania, zarządzania kosztami usług IT oraz naliczania opłat. Zarządzanie Finansowe Usługami Informatycznymi zabezpiecza odpowiedni poziom finansowania dla projektowania, rozwoju i świadczenia usług, by realizować strategie organizacji w sposób efektywny kosztowo.

Procesy te są uwzględnione w Service Strategy (Strategii Usług), czyli jednego z podstawowych etapów fazy cyklu życia usługi.
''';
}
