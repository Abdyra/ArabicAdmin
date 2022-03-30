import 'package:flutter/material.dart';
import 'package:widgets/home/list_button.dart';
import 'package:widgets/widget/add_lesson.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const AddLessonWidget();
            }));
          },
          label: const Text(
            'Сабак кошуу',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 20,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 12,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        appBar: AppBar(),
        body: const ListButton(title: 'Сабак тандоо', nam: '# 1'));
  }
}
