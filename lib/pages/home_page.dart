import 'package:demo_project/consts.dart';
import 'package:demo_project/pages/task_page.dart';
import 'package:demo_project/widgets/left_container_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Stack(children: [
                  Container(
                    height: 200,
                    width: 100,
                    decoration: const BoxDecoration(
                        color: AppColors.beigeColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50))),
                  ),
                  Positioned(
                      top: 110,
                      left: 15,
                      right: 15,
                      child: Container(
                        height: 70,
                        width: 50,
                        decoration: const BoxDecoration(
                            color: AppColors.blackColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(35))),
                      )),
                ]),
                const SizedBox(width: 20),
                LeftContainerWidget(
                  color: AppColors.beigeColor,
                  width: width * 0.63,
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 243,
            height: 100,
            decoration: const BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    topRight: Radius.circular(50))),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: width * 0.19),
            child: LeftContainerWidget(
              color: AppColors.greyColor,
              width: width * 0.83,
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.only(left: width * 0.15),
            child: Text(
              '''Create Your 
Tasks And 
Manage Your
Work
            ''',
              style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: height * 0.04,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: width * 0.65, right: width * 0.05),
        child: TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TaskPage()));
            },
            style: const ButtonStyle(
                minimumSize: WidgetStatePropertyAll<Size>(Size(120, 50)),
                backgroundColor:
                    WidgetStatePropertyAll<Color>(AppColors.beigeColor)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Start',
                  style: TextStyle(color: AppColors.blackColor, fontSize: 16),
                ),
                SizedBox(width: 8),
                Icon(CupertinoIcons.arrow_right,
                    size: 18, color: AppColors.blackColor)
              ],
            )),
      ),
    );
  }
}
