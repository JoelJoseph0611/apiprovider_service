import 'package:flutter/cupertino.dart';

import 'ApiService.dart';
import 'api.dart';

class ApiProvider with ChangeNotifier{
  ApiService service = ApiService();

  List<Posts> productList = [];

  Future<void> fetchData() async {
    productList = (await service.fetchpoduct())!;
    notifyListeners();
  }
}