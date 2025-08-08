import 'package:flutter/material.dart';
import 'package:testing_arch/app/base/navigation.dart';
import 'package:testing_arch/app/util/theme.dart';
    
class MyApp extends StatelessWidget {

  const MyApp({ super.key });
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Testing Arch',
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: MaterialTheme.lightScheme(),
        ),
      
      routerConfig: router,
    );}
}