import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_member/app/data/utils/utils.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "training_member",
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      theme: Utils.theme.lightTheme,
      darkTheme: Utils.theme.darkTheme,
      themeMode: ThemeMode.system,
    ),
  );
}
