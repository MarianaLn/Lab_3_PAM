import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lab2_lunca_pam/models/wine_model.dart';

class WineController extends GetxController {
  RxList<Wine> wineList = <Wine>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadWineData();
  }

  Future<void> loadWineData() async {
    try {
      final String response = await rootBundle.loadString('assets/wine.json');
      final List<dynamic> data = json.decode(response);
      wineList.value = data.map((json) => Wine.fromJson(json)).toList();
    } catch (e) {
      print("Error loading wine data: $e");
    }
  }
}
