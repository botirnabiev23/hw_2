import 'package:flutter/material.dart';

class HomePage4 extends StatefulWidget {
  const HomePage4({super.key});

  @override
  State<HomePage4> createState() => _HomePage4State();
}

class _HomePage4State extends State<HomePage4> {
  var color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyContainer(color: color),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyContainer(color: color),
                MyContainer(color: color),
                MyContainer(color: color),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: MyContainer(color: color),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    color = Colors.red;
                    setState(() {});
                  },
                  child: const Text('Red'),
                ),
                ElevatedButton(
                  onPressed: () {
                    color = Colors.green;
                    setState(() {});
                  },
                  child: const Text('Green'),
                ),
                ElevatedButton(
                  onPressed: () {
                    color = Colors.pink;
                    setState(() {});
                  },
                  child: const Text('Pink'),
                ),
                ElevatedButton(
                  onPressed: () {
                    color = Colors.blue;
                    setState(() {});
                  },
                  child: const Text('Blue'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({
    super.key,
    required this.color,
  });
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: const Icon(Icons.apple),
    );
  }
}
