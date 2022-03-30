import 'package:flutter/material.dart';
import 'package:widgets/home/lessons/connecting_lessons.dart';

class ForExample extends StatelessWidget {
  const ForExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const Connectinglessons();
            }));
          },
          label: const Text(
            'жаны сабак',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          backgroundColor: Colors.blue,
          elevation: 12,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        appBar: AppBar(
          title: const Text('Сабактар'),
        ),
        body: ListView.separated(
          itemCount: 15,
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemBuilder: (BuildContext context, int index) {
            return const ListTile(
              leading: Text(
                '1). ',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              title: Text(
                'Бул эмне',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            );
          },
        ));
  }
}
