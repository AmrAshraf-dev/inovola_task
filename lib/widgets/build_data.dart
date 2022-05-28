import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import '../models/myModel.dart';

Widget buildData(BuildContext context, MyModel model) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  return Column(
    children: [
      Stack(
        children: [
          ImageSlideshow(
            width: double.infinity,
            height: 250,
            initialPage: 0,
            indicatorColor: Colors.white,
            indicatorBackgroundColor: Colors.grey,
            children: [
              Image.asset(
                'assets/images/shanghai_skyline.png',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/wuhancity.png',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/shanghai_skyline.png',
                fit: BoxFit.cover,
              ),
            ],
            // onPageChanged: (value) {
            //   print('Page changed: $value');
            // },
            autoPlayInterval: 3000,
            isLoop: true,
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.star_rate_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(30.0),
                child: Icon(
                  Icons.share_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.6),
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ],
          ),
        ],
      ),
      Expanded(
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: EdgeInsets.only(right: width * 0.07),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  model.interest ?? 'null',
                  style: const TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.03),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  model.title ?? 'null',
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.03, top: height * 0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    model.date ?? 'null',
                    style: const TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  const Icon(
                    Icons.calendar_today_rounded,
                    color: Colors.grey,
                    size: 25,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.03, top: height * 0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: width * 0.01),
                    child: Text(
                      model.address ?? 'null',
                      style: const TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ),
                  const Icon(
                    Icons.pin_drop_outlined,
                    color: Colors.grey,
                    size: 20,
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.03, top: height * 0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: width * 0.03),
                    child: Text(
                      model.trainerName ?? 'null',
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://pbs.twimg.com/profile_images/1304985167476523008/QNHrwL2q_400x400.jpg"),
                    radius: 15,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  model.trainerInfo ?? 'null',
                  style: const TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    'عن الدورة',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.03),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  model.occasionDetail ?? 'null',
                  style: const TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  'تكلفة الدورة',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'SAR 40',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  Text(
                    'الحجز العادي',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ],
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'SAR 80',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  Text(
                    'الحجز المميز',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ],
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'SAR 120',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  Text(
                    'الحجز السريع',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              width: double.infinity,
              height: 50.0,
              color: Colors.purple,
              child: const Center(
                child: Text(
                  'قم بالحجز الان',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
