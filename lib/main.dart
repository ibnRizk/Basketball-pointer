import 'package:adam/cubit/counter_cubit.dart';
import 'package:adam/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const AdamCaffee());
}

class AdamCaffee extends StatelessWidget {
  const AdamCaffee({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Center(
              child: Center(
                child: Text(
                  'Counter',
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      color: Colors.black,
                      fontSize: 36),
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
                        '${BlocProvider.of<CounterCubit>(context).teamAPoint}',
                        style:
                            const TextStyle(color: Colors.black, fontSize: 120),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 60)),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncrement(team: 'A', buttonNumber: 1);
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
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncrement(team: 'A', buttonNumber: 2);
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
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncrement(team: 'A', buttonNumber: 3);
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
                          BlocProvider.of<CounterCubit>(context)
                              .teamDecrement(team: 'A', buttonNumber: 1);
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
                        '${BlocProvider.of<CounterCubit>(context).teamBPoint}',
                        style:
                            const TextStyle(color: Colors.black, fontSize: 120),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 60)),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncrement(team: 'B', buttonNumber: 1);
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
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncrement(team: 'B', buttonNumber: 2);
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
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncrement(team: 'B', buttonNumber: 3);
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
                          BlocProvider.of<CounterCubit>(context)
                              .teamDecrement(team: 'B', buttonNumber: 1);
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
                  BlocProvider.of<CounterCubit>(context).counterZero();
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
