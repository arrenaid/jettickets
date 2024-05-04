import 'package:flutter/material.dart';
import 'package:jettickets/screen/anyway_screen.dart';
import 'package:jettickets/screen/hotels_screen.dart';
import 'package:jettickets/screen/main_screen.dart';
import 'package:jettickets/screen/navi_screen.dart';
import 'package:jettickets/screen/profile_screen.dart';
import 'package:jettickets/screen/search_screen.dart';
import 'package:jettickets/screen/subscription_screen.dart';
import 'package:jettickets/screen/tickets_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        MainScreen.route: (context) => const MainScreen(),
        SearchScreen.route: (context) => const SearchScreen(),
        TicketsScreen.route: (context) => const TicketsScreen(),
        SubscriptionScreen.route: (context) => const SubscriptionScreen(),
        NaviScreen.route: (context) => const NaviScreen(),
        AnywayScreen.route: (context) => const AnywayScreen(),
        ProfileScreen.route: (context) => const ProfileScreen(),
        HotelsScreen.route: (context) => const HotelsScreen(),
      },
      initialRoute: NaviScreen.route,
    );
  }
}