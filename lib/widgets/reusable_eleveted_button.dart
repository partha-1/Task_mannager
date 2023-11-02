import 'package:flutter/material.dart';

class ReusableElevatedButton extends StatelessWidget {
  const ReusableElevatedButton({
    super.key, required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            onPressed: onTap,
            child: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            )));
  }
}