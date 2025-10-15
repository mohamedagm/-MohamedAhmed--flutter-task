import 'package:flutter/material.dart';

class SectionsList extends StatefulWidget {
  const SectionsList({super.key});

  @override
  State<SectionsList> createState() => _SectionsListState();
}

class _SectionsListState extends State<SectionsList> {
  List<String> sectionsNames = [
    'موضة رجالى',
    'ساعات',
    'موبايلات',
    'منتجات تجميل',
    'فلل',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          sectionsNames.length,
          (index) => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                  borderRadius: BorderRadius.circular(4),
                ),
                margin: EdgeInsets.symmetric(horizontal: 12),
                child: Image.asset(
                  'assets/images/im${index + 1}.png',
                  fit: BoxFit.fill,
                  width: 73,
                  height: 56,
                ),
              ),
              Text(
                sectionsNames[index],
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(9, 15, 31, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
