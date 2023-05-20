import 'package:flutter/material.dart';
import 'package:mobile_proj/calendar.dart';
import 'package:mobile_proj/issue_req.dart';
import 'package:mobile_proj/question.dart';
import 'package:mobile_proj/settings.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Title',
      theme: ThemeData(
        appBarTheme:AppBarTheme(
        color: Color.fromARGB(255, 162, 213, 243)
        
      )),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedScreenIndex = 0;
  final List _screens = [
      {"screen": const Calendar(), "title": "Calendar"},
    {"screen": const IssueRequest(), "title": "Issue Request"},
      {"screen": const IssueRequest(), "title": "Issue Request"},
    {"screen": const Settings(), "title": "Settings"}
  ];

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text(_screens[_selectedScreenIndex]["title"],style: TextStyle(color:Colors.black,)),
        elevation: 0,
        centerTitle: true,
      ),
      body: _screens[_selectedScreenIndex]["screen"],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.red,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedScreenIndex,
        onTap: _selectScreen,
        items: const [
           BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined), label: 'Calendar'),
           BottomNavigationBarItem(icon: Icon(Icons.note_add_outlined), label: 'Issue'),
          BottomNavigationBarItem(icon: Icon(Icons.help_center_outlined), label: 'Question'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined), label: "Settings")
        ],
      ),
    );
  }
}