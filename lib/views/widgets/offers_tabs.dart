import 'package:flutter/material.dart';

class OffersTabs extends StatefulWidget {
  const OffersTabs({super.key});

  @override
  State<OffersTabs> createState() => _OffersTabsState();
}

class _OffersTabsState extends State<OffersTabs> {
  List<String> offersName = ['كل العروض', 'ملابس', 'أكسسوارات', 'الكترونيات'];
  int currIndexOffer = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          offersName.length,
          (index) => InkWell(
            onTap:
                () => setState(() {
                  currIndexOffer = index;
                }),
            child: Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color:
                    currIndexOffer == index
                        ? Color.fromRGBO(249, 91, 28, 0.05)
                        : Color.fromRGBO(255, 255, 255, 0.3),
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Colors.grey),
              ),
              child: Text(
                offersName[index],
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color:
                      currIndexOffer == index
                          ? Color(0xffF95B1C)
                          : Color.fromRGBO(9, 15, 31, 0.5),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
