import 'package:flutter/material.dart';

void main() {
  runApp(const AdamCaffee());
}

class AdamCaffee extends StatefulWidget {
  const AdamCaffee({super.key});

  @override
  State<AdamCaffee> createState() => _AdamCaffeeState();
}

class _AdamCaffeeState extends State<AdamCaffee> {
  int a = 0;

  int b = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Center(
            child: Center(
              child: Text(
                'Counter',
                style: TextStyle(
                    fontFamily: 'Pacifico', color: Colors.black, fontSize: 36),
              ),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(color: Colors.black, fontSize: 32),
                    ),
                    Text(
                      '$a',
                      style:
                          const TextStyle(color: Colors.black, fontSize: 120),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 60)),
                      onPressed: () {
                        setState(() {
                          a++;
                        });
                      },
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 60)),
                      onPressed: () {
                        setState(() {
                          a += 2;
                        });
                      },
                      child: const Text(
                        'Add 2 Point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 60)),
                      onPressed: () {
                        setState(() {
                          a += 3;
                        });
                      },
                      child: const Text(
                        'Add 3 Point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 60)),
                      onPressed: () {
                        setState(() {
                          a--;
                        });
                      },
                      child: const Text(
                        '-1',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 450,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 70,
                    endIndent: 90,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(color: Colors.black, fontSize: 32),
                    ),
                    Text(
                      '$b',
                      style:
                          const TextStyle(color: Colors.black, fontSize: 120),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 60)),
                      onPressed: () {
                        setState(() {
                          b++;
                        });
                      },
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 60)),
                      onPressed: () {
                        setState(() {
                          b += 2;
                        });
                      },
                      child: const Text(
                        'Add 2 Point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 60)),
                      onPressed: () {
                        setState(() {
                          b += 3;
                        });
                      },
                      child: const Text(
                        'Add 3 Point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 60)),
                      onPressed: () {
                        setState(() {
                          b--;
                        });
                      },
                      child: const Text(
                        '-1',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 45,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(150, 60)),
              onPressed: () {
                setState(() {
                  b = 0;
                  a = 0;
                });
              },
              child: const Text(
                'Reset',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
