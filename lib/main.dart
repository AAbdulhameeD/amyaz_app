import 'package:amyz_app/screens/Installment_details_screen.dart';
import 'package:amyz_app/screens/cart_screen.dart';
import 'package:amyz_app/screens/compare_screen.dart';
import 'package:amyz_app/screens/contact_us_screen.dart';
import 'package:amyz_app/screens/favourites_screen.dart';
import 'package:amyz_app/screens/installment_items_screen.dart';
import 'package:amyz_app/screens/notifications_screen.dart';
import 'package:amyz_app/screens/order_details_screen.dart';
import 'package:amyz_app/screens/order_table.dart';
import 'package:amyz_app/screens/pay_screen.dart';
import 'package:amyz_app/screens/total_orders_screen.dart';
import 'package:amyz_app/screens/upload_photo_screen.dart';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp ( DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:CartScreen()
    );
  }
}