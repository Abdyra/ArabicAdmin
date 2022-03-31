import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:widgets/home/list_button.dart';
import 'package:widgets/madels/lesson.dart';
import 'package:widgets/widget/add_lesson.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<List<Lesson>> downloadLesson() async {
    final dio = Dio();

    final List<Lesson> lessons = [];

    final response = await dio.get("http://10.0.2.2:5051/api/lesson");

    for (var item in response.data) {
      final lesson = Lesson.fromMap(item);
      lessons.add(lesson);
    }
    return lessons;
  }

  @override
  void initState() {
    super.initState();
  }

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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      appBar: AppBar(),
      body: FutureBuilder<List<Lesson>>(
        future: downloadLesson(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListButton(
                  nam: (index + 1).toString(),
                  title: snapshot.data![index].title,
                );
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
