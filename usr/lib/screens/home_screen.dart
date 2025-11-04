import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/dashboard_screen.dart';
import 'package:couldai_user_app/screens/scan_screen.dart';
import 'package:couldai_user_app/screens/monitoring_screen.dart';
import 'package:couldai_user_app/screens/performance_screen.dart';
import 'package:couldai_user_app/screens/reports_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    DashboardScreen(),
    ScanScreen(),
    MonitoringScreen(),
    PerformanceScreen(),
    ReportsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_rounded),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shield_rounded),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.visibility_rounded),
            label: 'Monitoring',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.speed_rounded),
            label: 'Performance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_rounded),
            label: 'Reports',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
