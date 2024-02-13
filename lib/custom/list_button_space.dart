import 'package:flutter/material.dart';

class ListButtonSpace extends StatelessWidget {
  const ListButtonSpace(
      {super.key, required this.days, required this.space, required this.size});
  final List<String> days;
  final double space;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(days.length, (index) {
        return Row(
          children: [
            Text(
              days[index],
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: size,
              ),
            ),
            SizedBox(
              width: space,
            )
          ],
        );
      }),
    );
  }
}
