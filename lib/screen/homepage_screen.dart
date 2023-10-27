import 'package:flutter/material.dart';
import 'package:genteel_app/components/search_field.dart';
import 'package:genteel_app/components/topbar_home.dart';
import 'package:genteel_app/components/trending_product_widget.dart';
import 'package:icons_flutter/icons_flutter.dart';

const List<String> genderList = ['Women', 'Men', 'Children'];

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TopBarHome(),
        actions: [
          IconButton(icon: const Icon(Feather.heart), onPressed: () {}),
          IconButton(icon: const Icon(Feather.bell), onPressed: () {}),
        ],
      ),
      body: ListView(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: 18.0,
        ),
        children: const [
          SearchField(),
          TrendingProductWidget()
        ],
      ),
    );
  }
}
