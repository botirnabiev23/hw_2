import 'package:flutter/material.dart';

class HomePage5 extends StatefulWidget {
  const HomePage5({super.key});

  @override
  State<HomePage5> createState() => _HomePage5State();
}

class _HomePage5State extends State<HomePage5> {
  var color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyContainer(color: color),
                MyContainer(color: color),
              ],
            ),
            Row(
              children: [
                MyContainer(
                  color: color,
                )
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: MyContainer(color: color),
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
            )
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
      child: const Icon(Icons.favorite),
    );
  }
}
