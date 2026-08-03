import 'package:flutter/material.dart';
import 'service_catalog_page.dart';
import 'booking_page.dart';
import 'models/service_model.dart';

void main() {
  runApp(const HomeEaseApp());
}

class HomeEaseApp extends StatelessWidget {
  const HomeEaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HomeEase',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: const Color(0xFFF6F8FA),
        fontFamily: 'Roboto',
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (_) => const ServiceCatalogPage(),
            );
          case '/booking':
            final service = settings.arguments as ServiceModel;
            return MaterialPageRoute(
              builder: (_) => BookingPage(service: service),
            );
          default:
            return MaterialPageRoute(
              builder: (_) => const ServiceCatalogPage(),
            );
        }
      },
    );
  }
}
