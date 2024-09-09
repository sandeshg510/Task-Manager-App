import 'package:demo_project/consts.dart';
import 'package:demo_project/pages/task_page/widgets/circular_progress.dart';
import 'package:demo_project/pages/task_page/widgets/large_circular_progress_bar.dart';
import 'package:demo_project/pages/task_page/widgets/date_widget.dart';
import 'package:demo_project/pages/task_page/widgets/half_date_widget.dart';
import 'package:demo_project/pages/task_page/widgets/profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../chat_page/chat_page.dart';

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
                const LargeCircularProgressBar(
                  value: 0.7,
                  // color: Colors.transparent,
                ),
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
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.brown.shade400,
                          AppColors.beigeColor,
                          AppColors.lightBlueColor,
                          Colors.lightBlue.shade300,
                          AppColors.purpleColor,
                          AppColors.beigeColor,
                        ],
                        stops: const [0.08, 0.15, 0.4, 0.5, 0.6, 1.0],
                      ),
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
                  padding: const EdgeInsets.only(left: 25.0, top: 30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Column(
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Chat Application',
                                style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: height * 0.005),
                              RichText(
                                  text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '●  ',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.redAccent.shade100,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Grotesk'),
                                  ),
                                  TextSpan(
                                    text: 'Over due',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.redAccent.shade100,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Grotesk'),
                                  ),
                                  const TextSpan(
                                    text: ', Mar 13, 2022',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.greyColor,
                                        fontFamily: 'Grotesk'),
                                  ),
                                ],
                              )
                                  // Set the maximum number of lines
                                  ),
                            ],
                          ),
                          SizedBox(width: width * 0.014),
                          const Stack(
                            children: [
                              ProfileAvatar(name: 'Chad'),
                              SizedBox(width: 100),
                              Positioned(
                                  top: 0,
                                  bottom: 0,
                                  left: 25,
                                  child: ProfileAvatar(name: 'Matt')),
                              Positioned(
                                  top: 0,
                                  bottom: 0,
                                  left: 50,
                                  child: ProfileAvatar(name: 'Julie')),
                            ],
                          )
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'NFT Website',
                                style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: height * 0.005),
                              RichText(
                                  text: const TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '●  ',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: AppColors.lightYellowColor,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Grotesk'),
                                  ),
                                  TextSpan(
                                    text: 'Scheduled',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.lightYellowColor,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Grotesk'),
                                  ),
                                  TextSpan(
                                    text: ', Mar 16, 2022',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.greyColor,
                                        fontFamily: 'Grotesk'),
                                  ),
                                ],
                              )
                                  // Set the maximum number of lines
                                  ),
                            ],
                          ),
                          SizedBox(width: width * 0.06),
                          const Stack(
                            children: [
                              ProfileAvatar(name: 'Chad'),
                              SizedBox(width: 80),
                              Positioned(
                                  top: 0,
                                  bottom: 0,
                                  left: 26,
                                  child: ProfileAvatar(name: 'yuri_lan')),
                            ],
                          )
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'NFT Website',
                                style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: height * 0.005),
                              RichText(
                                  text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '●  ',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.lightGreen.shade300,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Grotesk'),
                                  ),
                                  TextSpan(
                                    text: 'Completing',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.lightGreen.shade300,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Grotesk'),
                                  ),
                                  const TextSpan(
                                    text: ', Mar 16, 2022',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.greyColor,
                                        fontFamily: 'Grotesk'),
                                  ),
                                ],
                              )
                                  // Set the maximum number of lines
                                  ),
                            ],
                          ),
                          SizedBox(width: width * 0.04),
                          const Stack(
                            children: [
                              ProfileAvatar(name: 'jung_t'),
                              SizedBox(width: 80),
                              Positioned(
                                  top: 0,
                                  bottom: 0,
                                  left: 26,
                                  child: ProfileAvatar(name: 'erica_y')),
                            ],
                          )
                        ],
                      ),
                      Stack(
                        children: [
                          Row(
                            children: [
                              SizedBox(height: height * 0.116),
                              SizedBox(width: width * 0.03),
                              const Icon(
                                Icons.home_filled,
                                size: 28,
                                color: AppColors.purpleColor,
                              ),
                              SizedBox(width: height * 0.05),
                              const Icon(
                                  size: 28,
                                  Icons.insert_chart,
                                  color: Colors.grey),
                              SizedBox(width: height * 0.16),
                              const Icon(
                                size: 28,
                                Icons.notification_important_rounded,
                                color: Colors.grey,
                              ),
                              SizedBox(width: height * 0.038),
                              const Icon(
                                size: 28,
                                Icons.settings,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          Positioned(
                              top: 1,
                              left: 144,
                              right: 154,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ChatPage()));
                                },
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30)),
                                    gradient: LinearGradient(
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Colors.brown.shade400,
                                        AppColors.beigeColor,
                                        AppColors.lightBlueColor,
                                        Colors.lightBlue.shade300,
                                        AppColors.purpleColor,
                                        AppColors.beigeColor,
                                      ],
                                      stops: const [
                                        0.08,
                                        0.15,
                                        0.4,
                                        0.5,
                                        0.6,
                                        1.0
                                      ],
                                    ),
                                  ),
                                  child: const Icon(
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
