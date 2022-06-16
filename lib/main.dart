import 'package:flutter/material.dart';

import 'screens/Taskscreen.dart';
import 'package:provider/provider.dart';
import 'models/Task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => Task_data(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
