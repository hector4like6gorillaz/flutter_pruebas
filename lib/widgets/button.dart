import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.route, required this.label});
  final route;
  final label;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: () => GoRouter.of(context).go(route),
        icon: const Icon(Icons.abc),
        label: Text("Presioname $label"));
  }
}
