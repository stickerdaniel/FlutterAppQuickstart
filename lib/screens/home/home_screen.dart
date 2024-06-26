// lib/screens/home/home_screen.dart
import 'package:flutter/material.dart';

import '../../services/theme_service.dart';
import '../settings/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  final ThemeService themeService;

  const HomeScreen({Key? key, required this.themeService}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SettingsScreen(
                          themeService: widget.themeService,
                        )),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your action here
        },
        label: const Text('Action'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
