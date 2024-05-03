import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'ApiProvider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ApiProvider>(context);
    return Scaffold(
      body: ListView.builder(itemCount: provider.productList.length ,itemBuilder: (context, index) {
        return Text("${provider.productList[index].title}");
      },),
    );
  }
}
