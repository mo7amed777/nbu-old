import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../../widgets/appbar.dart';
import '../../../../widgets/drawer.dart';

class NewsDetail extends StatefulWidget {
  final String title;
  final String date;
  final String image;

  const NewsDetail({
    required this.title,
    required this.date,
    required this.image,
  });

  @override
  State<NewsDetail> createState() => _NewsDetailState();
}

class _NewsDetailState extends State<NewsDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(title: widget.title),
        drawer: MyDrawer(),
        body: ListView(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.date,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "تحت رعاية معالي رئيس الجامعة•• أ.د.محمد بن يحيى الشهري ••يسر عمادة شؤون الطلاب ممثلة في إدارة الأنشطة والبرامج أن تعلن عن أنطلاق البطولات الرياضية ضمن فعاليات المهرجان الرمضاني العاشر  التسجيل: للطلاب لأفراد المجتمع كافة",
                textDirection: TextDirection.rtl,
              ),
            ),
            Center(
              child: RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {},
              ),
            ),
          ],
        ));
  }
}
