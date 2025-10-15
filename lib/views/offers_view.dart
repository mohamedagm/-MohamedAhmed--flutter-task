import 'package:flutter/material.dart';

class OffersView extends StatefulWidget {
  const OffersView({super.key});

  @override
  State<OffersView> createState() => _OffersViewState();
}

class _OffersViewState extends State<OffersView> {
  List<String> offersName = ['كل العروض', 'ملابس', 'أكسسوارات', 'الكترونيات'];
  List<String> sectionsNames = [
    'موضة رجالى',
    'ساعات',
    'موبايلات',
    'منتجات تجميل',
    'فلل',
  ];
  int currIndexOffer = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'استكشف العروض',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            'الكل',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          Icon(Icons.arrow_forward, size: 24),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(
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
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
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
                ),

                SizedBox(
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
                ),

                Container(
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
                          style: TextStyle(
                            color: Color(0xff3A813F),
                            fontSize: 12,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'لأى عرض تطلبه دلوقتى !',
                          style: TextStyle(
                            color: Color(0xff090F1F),
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
