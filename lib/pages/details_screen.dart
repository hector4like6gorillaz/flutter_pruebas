import 'package:flutter/material.dart';
import 'package:flutter_pruebas/widgets/button.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Details screen ---->"),
            Button(route: "/", label: "home screen")
          ],
        )),
      ),
    );
  }
}
