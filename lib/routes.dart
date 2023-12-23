import 'package:seeyou/pages/home.dart';
import 'package:seeyou/pages/settings.dart';
import 'package:seeyou/pages/dejavu.dart';
import 'package:get/get.dart';

final routes = [
  GetPage(name: '/', page: () => const HomePage()),
  GetPage(name: '/dejavu', page: () => const HomePage()),
  GetPage(name: '/', page: () => const HomePage()),
  GetPage(name: '/setting', page: () => SettingPage())
];
