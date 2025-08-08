import 'package:flutter/material.dart';
import 'package:testing_arch/di.dart';
import 'package:testing_arch/my_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize dependency injection
 await initDepedencyIndection();
  runApp(const MyApp());
  
}

