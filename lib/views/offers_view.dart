import 'package:flutter/material.dart';
import 'package:my_flutter_task/views/widgets/free_shipping_banner.dart';
import 'package:my_flutter_task/views/widgets/header_section.dart';
import 'package:my_flutter_task/views/widgets/offers_tabs.dart';
import 'package:my_flutter_task/views/widgets/sections_list.dart';

class OffersView extends StatelessWidget {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                HeaderSection(),

                OffersTabs(),

                SectionsList(),

                FreeShippingBanner(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
