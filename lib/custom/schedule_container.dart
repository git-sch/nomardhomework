import 'package:flutter/material.dart';

class ScheduleContainer extends StatelessWidget {
  const ScheduleContainer(
      {super.key,
      required this.startTime1,
      required this.startTime2,
      required this.endTime1,
      required this.endTime2,
      required this.purpose1,
      required this.purpose2,
      required this.parties,
      required this.backGroundColor});

  final String startTime1;
  final String startTime2;
  final String endTime1;
  final String endTime2;
  final String purpose1;
  final String purpose2;
  final List<String> parties;
  final Color backGroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
          color: backGroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(25))),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    startTime1,
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    startTime2,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Container(
                    width: 1,
                    height: 25,
                    decoration: const BoxDecoration(color: Colors.black),
                  ),
                  Text(
                    endTime1,
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    endTime2,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$purpose1\n$purpose2',
                    style: const TextStyle(
                      fontSize: 55,
                      height: 0.9,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: List.generate(parties.length, (index) {
                      return Row(
                        children: [
                          if (index < 4)
                            Text(
                              parties[index],
                              style: TextStyle(
                                  color: parties[index] == 'ME'
                                      ? Colors.black
                                      : Colors.grey),
                            ),
                          if (index == 4)
                            Text(
                              '+${parties.length - 3}',
                              style: const TextStyle(color: Colors.grey),
                            ),
                          //if (index > 4) const Spacer(),
                          const SizedBox(
                            width: 10,
                          )
                        ],
                      );
                    }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
