import 'package:flutter/material.dart';

class FreeShippingBanner extends StatelessWidget {
  const FreeShippingBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      decoration: BoxDecoration(
        color: Color.fromRGBO(249, 91, 28, 0.05),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Row(
          children: [
            Icon(Icons.check, color: Color(0xff3A813F)),
            SizedBox(width: 4),
            Text(
              'شحن مجاني',
              style: TextStyle(color: Color(0xff3A813F), fontSize: 12),
            ),
            Spacer(),
            Text(
              'لأى عرض تطلبه دلوقتى !',
              style: TextStyle(color: Color(0xff090F1F), fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
