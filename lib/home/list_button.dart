import 'package:flutter/material.dart';
import 'package:widgets/widget/example.dart';

class ListButton extends StatelessWidget {
  const ListButton({
    Key? key,
    required this.title,
    required this.nam,
  }) : super(key: key);

  final String title;
  final String nam;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return const ForExample();
        }));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(30)),
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(vertical: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.lock_reset_rounded,
                  size: 40,
                  color: Colors.white,
                ),
                Text(
                  nam,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
