import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_demo_task/routes/go_router.dart';

import 'apps/mobile/provider/bill_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (_) => BillProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: MobileAppRouter.goRouter,
    );
  }
}
