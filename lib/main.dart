import 'package:flutter/material.dart';
import 'package:nomardhomework/custom/list_button_space.dart';
import 'package:nomardhomework/custom/schedule_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const _url =
      'https://search.pstatic.net/common/?src=http%3A%2F%2Fimgnews.naver.net%2Fimage%2F215%2F2022%2F12%2F24%2FA202212240014_1_20221224110001826.jpg&type=sc960_832';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(color: Color(0xFF181818)),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 60,
              horizontal: 20,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundImage: NetworkImage(_url),
                        radius: 30,
                        foregroundColor: Colors.white,
                        //child: Image.network(_url),
                      ),
                      Transform.scale(
                        scale: 2,
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'MONDAY 16',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text(
                          'TODAY',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.circle,
                          color: Colors.purple,
                          size: 10,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ListButtonSpace(
                          days: ['17', '18', '19', '20', '21', '22', '23'],
                          space: 20,
                          size: 40,
                        )
                      ],
                    ),
                  ),
                  const ScheduleContainer(
                    startTime1: '11',
                    startTime2: '30',
                    endTime1: '12',
                    endTime2: '20',
                    purpose1: 'DESIGN',
                    purpose2: 'METTING',
                    parties: [
                      'ALEX',
                      'HELENA',
                      'NANA',
                    ],
                    backGroundColor: Colors.yellow,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const ScheduleContainer(
                    startTime1: '12',
                    startTime2: '35',
                    endTime1: '14',
                    endTime2: '10',
                    purpose1: 'DAILY',
                    purpose2: 'PROJECT',
                    parties: [
                      'ME',
                      'RICHARD',
                      'CITY',
                      'MARK',
                      'MARK',
                      'MARK',
                      'MARK',
                    ],
                    backGroundColor: Colors.purpleAccent,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const ScheduleContainer(
                    startTime1: '15',
                    startTime2: '00',
                    endTime1: '16',
                    endTime2: '30',
                    purpose1: 'WEEKLY',
                    purpose2: 'PLANNING',
                    parties: [
                      'DEN',
                      'NANA',
                      'MARK',
                    ],
                    backGroundColor: Colors.lightGreenAccent,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
