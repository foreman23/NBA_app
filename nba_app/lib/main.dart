import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Variables
  int currentIndex = 0;

  // Screens
  final screens = [
    const FirstPage(),
    const StandingsPage(),
    const StatsPage(),
    const NewsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: const Color(0xff999999),
          selectedItemColor: const Color(0xffCACACA),
          selectedFontSize: 12,
          unselectedFontSize: 12,
          iconSize: 34,
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xff262626),
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.assessment,
              ),
              label: "Standings",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.pie_chart,
              ),
              label: "Stats",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.newspaper,
              ),
              label: "News",
            ),
          ],
        ),
      ),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // Variables
  String buttonName = 'Click';
  int currentIndex = 0;
  int cardAmount = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 75,
          title:
              const Text("Live Games", style: TextStyle(color: Colors.white)),
          elevation: 0,
          backgroundColor: const Color(0xff7692FF),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                iconSize: 34,
                color: Colors.white),
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const SettingsPage();
                  }));
                },
                icon: const Icon(Icons.settings),
                iconSize: 34,
                color: Colors.white),
          ]),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 50,
            color: const Color(0xffECECEC),
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_ios,
                        color: Color(0xff626262)),
                    iconSize: 20),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color(0xff434343),
                      backgroundColor: const Color(0xffFDFDFD),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: const Text("Today")),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward_ios,
                        color: Color(0xff626262)),
                    iconSize: 20),
              ],
            ),
          ),
          // Game cards
          for (int i = 0; i < cardAmount; i++)
            Center(
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color(0xffFDFDFD),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(children: const [
                        Text("Nuggets"),
                        Text("Lakers"),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(children: const [
                        Text("19"),
                        Text("17"),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(children: const [
                        Text("06:14"),
                        Text("Q1"),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.notifications,
                              color: Color(0xff999999),
                            ))
                      ]),
                    ),
                  ],
                ),
              ),
            )
        ],
      ),
      backgroundColor: const Color(0xffECECEC),
    );
  }
}

class StandingsPage extends StatelessWidget {
  const StandingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 75,
          title: const Text("Standings", style: TextStyle(color: Colors.white)),
          elevation: 0,
          backgroundColor: const Color(0xff7692FF),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                iconSize: 34,
                color: Colors.white),
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const SettingsPage();
                  }));
                },
                icon: const Icon(Icons.settings),
                iconSize: 34,
                color: Colors.white),
          ]),
    );
  }
}

class StatsPage extends StatelessWidget {
  const StatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 75,
          title: const Text("Stats", style: TextStyle(color: Colors.white)),
          elevation: 0,
          backgroundColor: const Color(0xff7692FF),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                iconSize: 34,
                color: Colors.white),
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const SettingsPage();
                  }));
                },
                icon: const Icon(Icons.settings),
                iconSize: 34,
                color: Colors.white),
          ]),
    );
  }
}

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 75,
          title: const Text("News", style: TextStyle(color: Colors.white)),
          elevation: 0,
          backgroundColor: const Color(0xff7692FF),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                iconSize: 34,
                color: Colors.white),
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const SettingsPage();
                  }));
                },
                icon: const Icon(Icons.settings),
                iconSize: 34,
                color: Colors.white),
          ]),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        title: const Text("Settings", style: TextStyle(color: Colors.white)),
        elevation: 0,
        backgroundColor: const Color(0xff7692FF),
      ),
    );
  }
}
