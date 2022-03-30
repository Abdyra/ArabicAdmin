import 'package:flutter/material.dart';

class AddLessonWidget extends StatelessWidget {
  const AddLessonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Сабак кошуу'),
      ),
      body: SingleChildScrollView(
        padding:const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Сабактын Аты',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 12),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Атын жазыныз ',
                labelStyle: const TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              keyboardType: TextInputType.text,
            ),
            const SizedBox(height: 20),
            const Text(
              'Маалымат',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 12),
            TextFormField(
              maxLines: 5,
              decoration: InputDecoration(
                labelText: ' Текст\n жазыныз',
                labelStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              keyboardType: TextInputType.text,
            ),
            const SizedBox(height: 20),
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                radius: 50,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                    size: 30,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: OutlinedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.resolveWith(
                    (states) => const Size(260.0, 50.0),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Кошуу',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
