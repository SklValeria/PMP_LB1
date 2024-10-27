import 'package:flutter/material.dart';
import 'package:sklyarova_sks_24_1/models/student.dart';
import 'package:sklyarova_sks_24_1/widgets/student_item.dart';


class StudentsList extends StatelessWidget {
  const StudentsList({super.key, required this.students});
  final List<Student> students;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: students.length,
      itemBuilder: (contest, index) =>
          StudentsItem(student: students[index]),
    );
  }
}


class Students extends StatefulWidget {
  const Students({super.key});

  @override
  State<StatefulWidget> createState() {
    return _StudentsState();
  }
}

class _StudentsState extends State<Students> {
  // ignore: non_constant_identifier_names
  final List<Student> _students_list = [
    Student(
        firstName: 'Jack',
        lastName: 'Smith',
        department: Department.law,
        grade: 3,
        gender: Gender.male),
    Student(
        firstName: 'John',
        lastName: 'Dow',
        department: Department.finance,
        grade: 8,
        gender: Gender.male),
    Student(
        firstName: 'Ann',
        lastName: 'Black',
        department: Department.it,
        grade: 5,
        gender: Gender.female),
    Student(
        firstName: 'Jane',
        lastName: 'Dow',
        department: Department.medical,
        grade: 9,
        gender: Gender.female)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Students'),
      ),
      body: Column(
        children: [
          Expanded(
            child: 
              StudentsList(students: _students_list),
          ),
        ]
      ),
    );
  }
}
