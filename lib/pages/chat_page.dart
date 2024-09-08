import 'package:demo_project/widgets/online_user_widget.dart';
import 'package:demo_project/widgets/recent_chat_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consts.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: width * 0.1),
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
                    style: TextStyle(fontSize: 13),
                  ),
                  Text(
                    'Explore Tasks',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(width: width * 0.22),
              CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.greyColor,
                child: Container(
                  height: 49,
                  width: 49,
                  decoration: const BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.all(Radius.circular(24.5))),
                  child: const Icon(
                    Icons.mark_email_unread,
                    color: AppColors.blackColor,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: height * 0.04),
          const Padding(
            padding: EdgeInsets.only(left: 34.0),
            child: Text(
              'Online Members',
              style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: height * 0.03),
          Row(
            children: [
              SizedBox(width: width * 0.08),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(32)),
                      color: AppColors.whiteColor,
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
                        stops: const [0.08, 0.15, 0.4, 0.5, 0.6, 1.0],
                      ),
                    ),
                    child: const Icon(
                      CupertinoIcons.add,
                      color: AppColors.blackColor,
                    ),
                  ),
                  // SizedBox(height: height * 0.006),
                  RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Add',
                            style: TextStyle(
                                color: Colors.black38,
                                fontSize: 11,
                                fontFamily: 'Grotesk')),
                        TextSpan(
                            text: '\nChat',
                            style: TextStyle(
                                color: AppColors.blackColor,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Grotesk')),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(width: width * 0.045),
              const OnlineUserWidget(name: 'Chad'),
              SizedBox(width: width * 0.045),
              const OnlineUserWidget(name: 'Matt'),
              SizedBox(width: width * 0.045),
              const OnlineUserWidget(name: 'Julie'),
              SizedBox(width: width * 0.045),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 60,
                    width: 28,
                    decoration: const BoxDecoration(
                        color: AppColors.lightBlueColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30)),
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage(
                            'assets/yuri.png',
                          ),
                        )),
                  ),
                  SizedBox(height: height * 0.014),
                  const Text(
                    'Y',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: height * 0.05),
          Expanded(
            child: Container(
              alignment: AlignmentDirectional.topStart,
              height: double.infinity,
              decoration: const BoxDecoration(
                  color: AppColors.blackColor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(35),
                      topLeft: Radius.circular(35))),
              child: Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 20, top: 30),
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
                              'Recent Chat',
                              style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(width: width * 0.12),
                        Container(
                          height: 44,
                          width: 120,
                          decoration: BoxDecoration(
                              color: AppColors.whiteColor,
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
                                stops: const [0.08, 0.15, 0.4, 0.5, 0.6, 1.0],
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(24))),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                CupertinoIcons.archivebox_fill,
                                size: 14,
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Archive chat',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.blackColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.022),
                    const RecentChatDetails(
                      name: 'Chat Boldwick',
                      lastConverse: 'Sending the file right now',
                    ),
                    SizedBox(height: height * 0.025),
                    const RecentChatDetails(
                      name: 'Yuri Lorental',
                      lastConverse: 'can you confirm deadline?',
                    ),
                    SizedBox(height: height * 0.025),
                    const RecentChatDetails(
                      name: 'Julie Woodland',
                      lastConverse: 'I haven\'t completed the work',
                      messageReceived: true,
                    ),
                    SizedBox(height: height * 0.025),
                    const RecentChatDetails(
                      name: 'Erica Yaeger',
                      lastConverse: 'voice message (0.23)',
                    ),
                    SizedBox(height: height * 0.025),
                    const RecentChatDetails(
                      name: 'Jung Taekwoon',
                      lastConverse: 'Hello! How is the progress?',
                      messageReceived: true,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
