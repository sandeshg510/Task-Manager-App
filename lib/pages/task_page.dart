import 'package:demo_project/consts.dart';
import 'package:demo_project/widgets/circular_progress.dart';
import 'package:demo_project/widgets/date_widget.dart';
import 'package:demo_project/widgets/half_date_widget.dart';
import 'package:demo_project/widgets/large_circular_progress_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat_page.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: width * 0.09),
                CircleAvatar(
                  child: ClipOval(
                    child: Image.asset(
                      'assets/user1.png',
                    ),
                  ),
                ),
                SizedBox(width: width * 0.04),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Jamie!',
                      style:
                          TextStyle(fontSize: 13, color: AppColors.whiteColor),
                    ),
                    Text(
                      'Explore Tasks',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.whiteColor),
                    ),
                  ],
                ),
                SizedBox(width: width * 0.22),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: AppColors.greyColor,
                  child: Container(
                    height: 48,
                    width: 48,
                    decoration: const BoxDecoration(
                        color: AppColors.blackColor,
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    child: const Icon(Icons.mark_email_unread,
                        color: AppColors.whiteColor),
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: width * 0.09),
                const LargeCircularProgressBar(value: 0.7),
                SizedBox(width: width * 0.04),
                const Text(
                  '''Task 
Completed''',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: AppColors.whiteColor),
                ),
                SizedBox(width: width * 0.09),
                Container(
                  height: 38,
                  width: 90,
                  decoration: const BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.all(Radius.circular(24))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: AppColors.blackColor,
                        size: 18,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Mar 22',
                        style: TextStyle(
                            fontSize: 12, color: AppColors.blackColor),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            Row(
              children: <Widget>[
                const HalfDateWidget(
                  isLeftSide: true,
                ),
                SizedBox(width: width * 0.03),
                const DateWidget(
                  date: '12',
                  weekDay: 'Mon',
                ),
                SizedBox(width: width * 0.03),
                const DateWidget(
                  date: '13',
                  weekDay: 'Tue',
                ),
                SizedBox(width: width * 0.03),
                Container(
                  height: 110,
                  width: 52,
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(25)),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '14',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.blackColor),
                      ),
                      Text(
                        'Wed',
                        style: TextStyle(
                            fontSize: 12, color: AppColors.blackColor),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: width * 0.03),
                const DateWidget(
                  date: '15',
                  weekDay: 'Thu',
                ),
                SizedBox(width: width * 0.03),
                const DateWidget(
                  date: '16',
                  weekDay: 'Fri',
                ),
                SizedBox(width: width * 0.03),
                const HalfDateWidget(
                  isLeftSide: false,
                )
              ],
            ),
            SizedBox(height: height * 0.03),
            Expanded(
              child: Container(
                alignment: AlignmentDirectional.topStart,
                height: double.infinity,
                decoration: const BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(35),
                        topLeft: Radius.circular(35))),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 40.0, right: 20, top: 30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Your Tasks',
                                style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '(7/10) Completed',
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(width: width * 0.09),
                          Container(
                            height: 50,
                            width: 140,
                            decoration: const BoxDecoration(
                                color: AppColors.blackColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(24))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  alignment: Alignment.center,
                                  height: 42,
                                  width: 70,
                                  decoration: const BoxDecoration(
                                      color: AppColors.whiteColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(24))),
                                  child: const Text(
                                    'Left',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.blackColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(width: 15),
                                const Text(
                                  'Done',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: AppColors.whiteColor),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.018),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircularProgressBar(
                            value: 0.7,
                            color: AppColors.purpleColor,
                          ),
                          SizedBox(width: width * 0.02),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Chat Application',
                                style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Explore Tasks',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(width: width * 0.02),
                          CircleAvatar(
                            radius: 10,
                            child: ClipOval(
                              child: Image.asset(
                                'assets/chat.png',
                              ),
                            ),
                          ),
                          CircleAvatar(
                            child: ClipOval(
                              child: Image.asset(
                                'assets/matt.png',
                              ),
                            ),
                          ),
                          CircleAvatar(
                            child: ClipOval(
                              child: Image.asset(
                                'assets/julie.png',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.018),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircularProgressBar(
                            value: 0.8,
                            color: AppColors.beigeColor,
                          ),
                          SizedBox(width: width * 0.02),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'NFT Website',
                                style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Explore Tasks',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(width: width * 0.06),
                          CircleAvatar(
                            child: ClipOval(
                              child: Image.asset(
                                'assets/matt.png',
                              ),
                            ),
                          ),
                          CircleAvatar(
                            child: ClipOval(
                              child: Image.asset(
                                alignment: Alignment.center,
                                'assets/jung.png',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.018),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircularProgressBar(
                            value: 0.94,
                            color: AppColors.lightBlueColor,
                          ),
                          SizedBox(width: width * 0.02),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'NFT Website',
                                style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Explore Tasks',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(width: width * 0.06),
                          CircleAvatar(
                            child: ClipOval(
                              child: Image.asset(
                                'assets/erica.png',
                              ),
                            ),
                          ),
                          CircleAvatar(
                            child: ClipOval(
                              child: Image.asset(
                                alignment: Alignment.center,
                                'assets/julie.png',
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Row(
                            children: [
                              SizedBox(height: height * 0.116),
                              Icon(
                                Icons.home_filled,
                                size: 32,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              SizedBox(width: height * 0.04),
                              Icon(
                                size: 32,
                                Icons.insert_chart,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              SizedBox(width: height * 0.16),
                              Icon(
                                size: 32,
                                Icons.notification_important_rounded,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              SizedBox(width: height * 0.04),
                              Icon(
                                size: 32,
                                Icons.settings,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ],
                          ),
                          Positioned(
                              top: 1,
                              left: 100,
                              right: 100,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ChatPage()));
                                },
                                child: const CircleAvatar(
                                  radius: 30,
                                  backgroundColor: AppColors.lightBlueColor,
                                  child: Icon(
                                    CupertinoIcons.add,
                                    color: AppColors.blackColor,
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
