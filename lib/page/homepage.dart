import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_http2/controller/introduce_controller.dart';

import '../controller/count_controller.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final introduceController = Get.put(GetIntroduce());
  final itemCountController = Get.put(IntroduceCount());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.deepPurple,
          onPressed: () {},
          label: Obx(() => Text(itemCountController.count.toString()))),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () => introduceController.introduceList.isEmpty
                  ? Center(child: CircularProgressIndicator())
                  : ListView.separated(
                      itemCount: introduceController.introduceList.length,
                      itemBuilder: (context, index) {
                        final introduce =
                            introduceController.introduceList[index];
                        return GestureDetector(
                          onTap: () => itemCountController.getCount(introduce),
                          child: ListTile(
                            title: Text(introduce.title),
                            subtitle: Text(introduce.body),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return Divider(
                          thickness: 2,
                          height: 30,
                        );
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
