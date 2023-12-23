import 'package:flutter/material.dart';
import 'package:seeyou/components/user/github_user.dart';
import 'package:seeyou/controller/todo.dart';
import 'package:seeyou/pages/dejavu.dart';
import 'package:seeyou/pages/settings.dart';
import 'package:seeyou/pages/mine.dart';
import 'package:seeyou/pages/todo_list.dart';
import 'package:get/get.dart';
import 'package:material_symbols_icons/symbols.dart';

class HomePage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    TodoController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('appTitle'.tr),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'all') {
                controller.fetchToDos();
              } else if (value == 'completed') {
                controller.fetchToDos(completed: true);
              } else if (value == 'incomplete') {
                controller.fetchToDos(completed: false);
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'all',
                child: Text('全部'),
              ),
              const PopupMenuItem<String>(
                value: 'completed',
                child: Text('Completed'),
              ),
              const PopupMenuItem<String>(
                value: 'incomplete',
                child: Text('Incomplete'),
              ),
            ],
          ),
        ],
      ),
      drawer: Drawer(
        elevation: 8,
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'appTitle'.tr,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const GithubUserInfoWidget(),
                  ],
                ),
                Divider(
                  color: Theme.of(Get.context!).colorScheme.primary,
                  thickness: 0.5,
                ),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      ListTile(
                        title: Text('Home'.tr),
                        leading: const Icon(Icons.list),
                        onTap: () {
                          Get.back();
                        },
                      ),
                      ListTile(
                        title: Text('Settings'.tr),
                        leading: const Icon(Icons.settings),
                        onTap: () {
                          Get.to(SettingPage());
                        },
                      ),
                      ListTile(
                        title: Text('Help'.tr),
                        leading: const Icon(Icons.help),
                        onTap: () {
                          // Add your help page navigation logic here
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: const Text(
                    'App Version 1.1.0',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: const TodoListPage(),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: const Color.fromARGB(255, 241, 237, 221),
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Row(
            children: <Widget>[
              IconButton(
                tooltip: '瞬间',
                icon: const Icon(Symbols.cognition),
                onPressed: () {},
              ),
              IconButton(
                tooltip: '昨日重现',
                icon: const Icon(Symbols.play_circle),
                onPressed: () {
                  Get.to(DejaVuPage());
                },
              ),
              IconButton(
                tooltip: '谁',
                icon: const Icon(Symbols.smart_toy),
                onPressed: () {
                  Get.to(MinePage());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
