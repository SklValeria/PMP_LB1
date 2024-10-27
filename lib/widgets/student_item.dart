import 'package:flutter/material.dart';
import 'package:sklyarova_sks_24_1/models/student.dart';

class StudentsItem extends StatelessWidget {
  const StudentsItem({super.key, required this.student});
  final Student student;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: genderColors[student.gender],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        child: Row(
          children: [
            Text("${student.firstName} ${student.lastName}"),
            const Spacer(),
            Icon(departmentIcons[student.department]),
            const SizedBox(width: 10),
            Text("${student.grade}"),
          ],
        ),
      ),
    );
  }
}
