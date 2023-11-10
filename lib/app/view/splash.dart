import 'package:flutter/material.dart';
import 'package:laboratorio02/app/view/task_list.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/paisaje1.jpeg',
                width: 141,
                height: 129,
              ),
              const SizedBox(width: 16),
              Image.asset(
                'assets/images/paisaje2.jpeg',
                width: 180,
                height: 168,
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'Explora Paisajes',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return const TaskListPage();
                }));
              },
              child: const Text(
                'Descubre la belleza de la naturaleza con nuestra aplicación de paisajes. Explora montañas majestuosas y relájate en las playas serenas.',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
