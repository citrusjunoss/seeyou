import 'package:get/get.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          "appTitle": "moment",
          "Title": "Title",
          "Cancel": "Cancel",
          "Add": "Add",
          "Home": "Home",
          "Settings": "Settings",
          "Help": "Help",
          "All": "All",
          "Completed": "Completed",
          "Incomplete": "Incomplete",
          "toSecondPage": "to second page",
          "secondPage": "this is the second Page",
          "Dejavu": "Dejavu",
          "Mine": "Mine"
        },
        'zh_CN': {
          "appTitle": "瞬间",
          "Title": "标题",
          "Cancel": "取消",
          "Home": "主页",
          "Settings": "设置",
          "Help": "帮助",
          "All": "全部",
          "Completed": "已完成",
          "Incomplete": "未完成",
          "Add": "新增",
          "toSecondPage": "去到第二页",
          "secondPage": "这里上第二页",
          "Dejavu": "昨日重现",
          "Mine": "人生"
        }
      };
}
