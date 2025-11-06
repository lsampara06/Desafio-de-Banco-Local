import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
// Importa as classes necessárias
import 'data/models/sheep_model.dart';
import 'domain/repository/sheep_repository.dart';
import 'presentation/screens/herd_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ServiceLocator.initialize(); 
  runApp(const RebanhoHiveApp());
}

class RebanhoHiveApp extends StatelessWidget {
  const RebanhoHiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rebanho (Hive)',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const HerdScreen(),
    );
  }
}
