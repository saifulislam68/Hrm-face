import 'package:flutter/material.dart';
import 'package:hrm_face/hrm_face/failed.dart';
import 'package:lottie/lottie.dart';

class GoHome extends StatelessWidget {
  const GoHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.network(
                  'https://assets4.lottiefiles.com/packages/lf20_4zbxvbqk.json',
                  height: 200),
              const Text(
                'Go Home!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Lets Work!',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const Text(
                'Lets Work!',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const Failed())));
                },
                child: const Text(
                  'View attendance this month',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w700,
                      fontSize: 17),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
