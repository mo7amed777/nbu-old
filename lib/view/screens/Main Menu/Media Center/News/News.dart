import 'package:demo/view/screens/Main%20Menu/Media%20Center/News/details.dart';
import 'package:demo/view/widgets/appbar.dart';
import 'package:demo/view/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widgets/media_card.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: 'News'),
      drawer: MyDrawer(),
      body: ListView(
        children: [
          MediaCard(
            title:
                'برعاية رئيس الجامعة نعلن أنطلاق البطولات الرياضية ضمن فعاليات المهرجان الرمضاني العاشر',
            subtitle: '26 Sha’ban 1443 Hijri',
            image: 'assets/images/media/placeholder.jpg',
            onTap: () {
              Get.to(NewsDetail(
                title:
                    'برعاية رئيس الجامعة نعلن أنطلاق البطولات الرياضية ضمن فعاليات المهرجان الرمضاني العاشر',
                date: '26 Sha’ban 1443 Hijri',
                image: 'assets/images/media/placeholder.jpg',
              ));
            },
          ),
          MediaCard(
            title:
                'برعاية رئيس الجامعة نعلن أنطلاق البطولات الرياضية ضمن فعاليات المهرجان الرمضاني العاشر',
            subtitle: '26 Sha’ban 1443 Hijri',
            image: 'assets/images/media/placeholder.jpg',
            onTap: () {
              Get.to(NewsDetail(
                title:
                    'برعاية رئيس الجامعة نعلن أنطلاق البطولات الرياضية ضمن فعاليات المهرجان الرمضاني العاشر',
                date: '26 Sha’ban 1443 Hijri',
                image: 'assets/images/media/placeholder.jpg',
              ));
            },
          ),
          MediaCard(
            title:
                'Information Technology Deanship obtained the ISO 9001-2015 certificate',
            subtitle: '26 Sha’ban 1443 Hijri',
            image: 'assets/images/media/placeholder.jpg',
            onTap: () {
              Get.to(NewsDetail(
                title:
                    'Information Technology Deanship obtained the ISO 9001-2015 certificate',
                date: '26 Sha’ban 1443 Hijri',
                image: 'assets/images/media/placeholder.jpg',
              ));
            },
          ),
          MediaCard(
            title:
                'برعاية رئيس الجامعة نعلن أنطلاق البطولات الرياضية ضمن فعاليات المهرجان الرمضاني العاشر',
            subtitle: '26 Sha’ban 1443 Hijri',
            image: 'assets/images/media/placeholder.jpg',
            onTap: () {
              Get.to(NewsDetail(
                title:
                    'برعاية رئيس الجامعة نعلن أنطلاق البطولات الرياضية ضمن فعاليات المهرجان الرمضاني العاشر',
                date: '26 Sha’ban 1443 Hijri',
                image: 'assets/images/media/placeholder.jpg',
              ));
            },
          ),
          MediaCard(
            title:
                'برعاية رئيس الجامعة نعلن أنطلاق البطولات الرياضية ضمن فعاليات المهرجان الرمضاني العاشر',
            subtitle: '26 Sha’ban 1443 Hijri',
            image: 'assets/images/media/placeholder.jpg',
            onTap: () {
              Get.to(NewsDetail(
                title:
                    'برعاية رئيس الجامعة نعلن أنطلاق البطولات الرياضية ضمن فعاليات المهرجان الرمضاني العاشر',
                date: '26 Sha’ban 1443 Hijri',
                image: 'assets/images/media/placeholder.jpg',
              ));
            },
          ),
        ],
      ),
    );
  }
}
