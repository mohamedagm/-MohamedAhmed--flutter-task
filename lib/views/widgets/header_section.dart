import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'استكشف العروض',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Text(
                'الكل',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
              Icon(Icons.arrow_forward, size: 24),
            ],
          ),
        ),
      ],
    );
  }
}
