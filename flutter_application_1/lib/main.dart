import 'package:flutter/material.dart'; // flutterдің Material дизайн кітапханасын импорттап, UI элм пайдалануға

void main() {
  // бағдарламаны орындау,іске қосу
  runApp(const MyApp()); //MyAPP виджетті іске қосу
}

class MyApp extends StatefulWidget {
  // MyApp негізгі класс, мұрагерлік
  const MyApp({super.key}); // ата аналық класстың кеу мәнін қабылдайды

  @override // анотация, методты қайта анықтау
  State<MyApp> createState() =>
      _MyAppState(); // қолданбаның күйін анықтайтын класс
} //StatefulWidget-ке байланысты класын құрады

class _MyAppState extends State<MyApp> {
  //мұрагерлікке алып жатыр,қолданба күйін басқарады
  @override //
  Widget build(BuildContext context) {
    // флаттерда әр UI элементтерін құратын әдіс
    return MaterialApp(
      //шаблон дайын
      //флаттердің негізгі контейнері
      home: Scaffold(
        //қолданбаның негізгі қаңқасы,Scaffold негізгі экран құрылымын қамтамасыз ету
        appBar: AppBar(
          //жоғары тақырыптық панель титуль
          title: const Text(
            "Lab 3: Layout Basics",
            style: TextStyle(
              color: Colors.white, //ішіне жазылатын мәтін
              fontSize: 20, fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.teal, //аппбардың фонын көк түске
        ), //тақырып панелін жасау
        backgroundColor:
            Colors.grey[300], // дененің негізгі түсі,экранның фонын орнату
        body: Column(
          // ішіндегі элем тік вертикальді орналастыру
          children: <Widget>[
            //ішіне бірнеше элем қоса аламз
            //Column ішіндегі барлық виджет тізімі
            Container(
              //флаттердегі негізгі мно-ф блок(шекара,көлеңке),виджеттерді топтастыру стильдеу
              padding: EdgeInsets.all(
                  16), //контейнер ішіндегі мәтін мен шет арасындағы қашықтық
              margin: const EdgeInsets.all(30), //сыртқы шеттерден қашықтық
              decoration: BoxDecoration(
                //контейнердің дизайнын орнату
                color: Colors.blue, //фонды көк түске
                borderRadius: BorderRadius.circular(
                    12), //контейнердің бұрыштарын дөңгелектейді
                boxShadow: [
                  //контейнердің көлеңкесін қосады
                  BoxShadow(
                    //класс,виджет шекараларын бокс,көлеңке қосуға көмектеседі
                    color: Colors.black.withOpacity(0.2), //көлеңке түсі
                    blurRadius: 6, //көлеңкені бұлдырлану деңгейі
                    offset: const Offset(
                        2, 2), // көлденеңнен г-з, в-л бағыттағы ығысуы
                  )
                ], //сhild бір ғана ішкі виджетті белгілеу үшін
                // children бір уакытта 1 ден көп виджетті көрсету үшін
              ), //контейнердің сыртқы көрінісін
              child: Text(
                "Welcome to Flatter", //мәтін көрсетеді
                style: TextStyle(
                  //мәтін стилін орнатады
                  color: Colors.white, //түс беру
                  fontSize: 18, //шрифт өлшемін беру
                  fontWeight: FontWeight.bold, //шрифт қалыңдығын береді
                ),
              ),
            ), //контейнер стильденген блок
            // const SizedBox(height: 16), //аралық бос орын,2 элемент арасында бос орын қалдыру биіктікпен
            Container(
              // 2 ші контейнер
              decoration:
                  BoxDecoration(color: Colors.pink), //контейнердің фонынын бояу
              child: const Row(
                // ROW элементтерді көлденең орналастыру
                children: [
                  Text(
                    "Text 1",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 40), //екі текст арасында 40 орн қалдыру
                  Text(
                    "Text 2",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ), //элементтерді көлденең орналастырады
            ),
            Container(
              //3 контейнер сары түспен
              padding: EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 20), //тік және көлденең бос орындар алу
              decoration: BoxDecoration(
                //
                color: Colors.yellow, // сары түсті фон
                borderRadius: BorderRadius.circular(
                    8), //контейнер бұрыштарын 8 px ге дейін дөңгелектейді
                border: Border.all(
                    color: Colors.white, width: 2), //ақ түсті 2 px шекара
              ),
              child: Row(
                //іштегі элементтерді көлденең оранластыру
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, //2 элементті контейнердің он сол жағына бөледі
                children: [
                  Text(
                    'Left Text',
                    style: TextStyle(
                        color: Colors.white, fontSize: 16), //сол жақтағы мәтін
                  ),
                  Text(
                    'Right Text',
                    style: TextStyle(
                        color: Colors.white, fontSize: 16), // он жақтағы мәтін
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
