import 'package:flutter/material.dart';
import 'pages/account_page.dart';
import 'pages/activity_page.dart';
import 'pages/home_page.dart';
import 'pages/parcel_page.dart';
import 'pages/ride_booking_page.dart';
import 'theme/app_colors.dart';

void main() => runApp(const TrigoApp());

class TrigoApp extends StatelessWidget {
  const TrigoApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Trigo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.green),
          scaffoldBackgroundColor: const Color(0xFFFAFCFA),
          fontFamily: 'Roboto',
        ),
        home: const MainShell(),
      );
}

class MainShell extends StatefulWidget {
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      HomePage(
        onRide: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const RideBookingPage())),
        onParcel: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ParcelPage())),
      ),
      const ActivityPage(),
      const AccountPage(),
    ];
    return Scaffold(
      body: SafeArea(child: pages[_index]),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: (value) => setState(() => _index = value),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), selectedIcon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.receipt_long_outlined), selectedIcon: Icon(Icons.receipt_long), label: 'Activity'),
          NavigationDestination(icon: Icon(Icons.person_outline), selectedIcon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
