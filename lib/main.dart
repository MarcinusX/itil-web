import 'package:flutter/material.dart';
import 'package:itil/about_itil_page.dart';
import 'package:itil/lifecycle_page.dart';
import 'package:itil/my_card.dart';
import 'package:itil/service_delivery_page.dart';
import 'package:itil/service_support_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ITIL',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (_) => MyHomePage(),
        '/why': (_) => AboutItilPage(),
        '/service-support': (_) => ServiceSupportPage(),
        '/service-delivery': (_) => ServiceDeliveryPage(),
        '/lifecycle': (_) => LifecyclePage(),
        '/svs': (_) => ServiceSupportPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ITIL'),
        centerTitle: true,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 1200,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                MyCard(
                  title: 'Dlaczego ITIL?',
                  imageUrl:
                      'https://media.defense.gov/2017/Nov/13/2001842185/780/780/0/171026-F-RN211-001.JPG',
                  readMorePage: '/why',
                  text: Text(
                      'Badania Gartnera pokazują, że 60% firmowych wydatków na IT pochłaniają infrastruktura i operacje, a niemal połowa pracowników działów IT zajmuje się codziennymi, taktycznymi procesami. Wprowadzenie ITIL pozwala podnieść wydajność biznesową przedsiębiorstwa nawet o 80%.'),
                ),
                MyCard(
                  imageOnLeft: false,
                  title: 'Service support',
                  imageUrl:
                      'http://www.dedibot.com/resources/images/service/ser101.png',
                  readMorePage: '/service-support',
                  text: Text(
                      'Wsparcie serwisowe zapewnia wszystkie procesy operacyjne niezbędne do obsługi przerw w świadczeniu usług i do wdrożenia zmian; w ten sposób zagwarantowana jest dostępność usług IT.'),
                ),
                MyCard(
                  title: 'Service Delivery',
                  imageUrl:
                      'http://mackenziewayne.com/wp-content/uploads/2015/09/service-delivery-blog2.jpg',
                  readMorePage: '/service-delivery',
                  text: Text(
                      '''Service Delivery i Service Support to jedne z najbardziej znanych obszarów ITIL v2, gdzie procesy są dzielone na obszary zarządzania usługami.
Service Delivery to procesy taktyczne, koncentrujące się na planowaniu dostarczaniu usług IT oraz poprawie ich jakości. Stanowią one podstawę w  zabezpieczeniu świadczonych usług.'''),
                ),
                MyCard(
                  imageOnLeft: false,
                  title: 'Cykl życia usług ITIL',
                  imageUrl:
                      'https://i0.wp.com/www.certguidance.com/wp-content/uploads/2017/09/itil-processes-Lifecycle-171hue-310px.png',
                  readMorePage: '/lifecycle',
                  imageHeight: 256,
                  imagePadding: EdgeInsets.symmetric(vertical: 32),
                  text: Text(
                      'Biblioteka  ITIL została skonstruowana wokół idei cyklu życia usługi. Nowe wymagania biznesowe skutkują nowymi usługami, wprowadzane są poprawki do obecnie świadczonych usług, poprawiane są w nich błędy, aktywnie  szuka  się możliwości poprawy jakości usług i obniżenia kosztów ich dostarczania – to  wszystko sprawia, że mechanizm cyklu życia usługi jest w ciągłym ruchu.'),
                ),
                MyCard(
                  title: 'ITIL 4 Service Value System',
                  imageUrl:
                      'https://itsm.tools/wp-content/uploads/2019/04/post-8887-diagram-01.png',
                  readMorePage: '/svs',
                  imagePadding: EdgeInsets.only(left: 32),
                  text: Text(
                      'W poprzednich wersjach ITIL skupiano się na spełnieniu wymagań określonych przez konsumenta. Lecz zauważono że to podejście bez czynnego udziału konsumenta w tworzeniu produktu nie daje wystarczających rezultatów. Dlatego praktyką wskazywaną przez ITIL w wersji czwartej jest współtworzenie (value co-creation), a nie dostarczana (value delivery). Innymi słowy, działania podejmowane przez dostawcę usługi (Service Provider) nie tworzą wartości same z siebie. Wartość jest realizowana wyłącznie wtedy, gdy klient angażuje się w kontakt z dostawcą usługi przy pomocy relacji usługowej (Service Relationship).'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
