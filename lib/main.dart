import 'package:flutter/material.dart';
import 'package:testing_arch/core/base/di.dart';
import 'package:testing_arch/core/base/my_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize dependency injection
 await initDepedencyIndection();
  runApp(const MyApp());
  
}

