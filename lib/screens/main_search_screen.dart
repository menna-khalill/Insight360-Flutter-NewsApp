
import 'package:flutter/material.dart';

import 'search_result_screen.dart';

class MainSearchScreen extends StatefulWidget {
  const MainSearchScreen({super.key});

  @override
  State<MainSearchScreen> createState() => _MainSearchScreenState();
}

class _MainSearchScreenState extends State<MainSearchScreen> {
  final TextEditingController controller = TextEditingController();

  void searchNews() {
    final query = controller.text.trim();

    if (query.isEmpty) {
      return;
    }

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SearchResultScreen(query: query),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 40,
            horizontal: 16,
          ),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller,
                  textInputAction: TextInputAction.search,
                  onFieldSubmitted: (_) => searchNews(),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search_sharp),
                    suffixIcon: IconButton(
                      onPressed: controller.clear,
                      icon: const Icon(Icons.close_sharp),
                    ),
                    filled: true,
                    fillColor: const Color(0xFFF0EFF0),
                    hintText: 'Search',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color(0xFFF0EFF0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: const BorderSide(
                        color: Color(0xFF0088FF),
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: controller.clear,
                child: const Text(
                  'Cancel',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF0E0AB1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
