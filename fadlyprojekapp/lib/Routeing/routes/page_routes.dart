import 'package:fadlyprojekapp/Routeing/page/page1.dart';
import 'package:fadlyprojekapp/Routeing/page/page2.dart';
import 'package:fadlyprojekapp/Routeing/page/page3.dart';
import 'package:fadlyprojekapp/Routeing/routes/route_name.dart';
import 'package:get/get.dart';

class pageRouteApp {
  static final pages = [
    GetPage(
      name: RouteName.page_1,
      page: () => PageOne(),
    ), // GetPage
    GetPage(
      name: RouteName.page_2,
      page: () => PageTwo(),
    ), // GetPage
    GetPage(
      name: RouteName.page_3,
      page: () => Pagethree(),
    ), // GetPage
  ];
}
