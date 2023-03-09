import 'package:flutter/material.dart';
import 'package:pal_mail_project/widget/custom_header.dart';
import '../utils/constant.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);
  static const String id = "CategoryScreen";

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 24,
                      color: Colors.blue,
                    )),
                Text('Category'),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(12.0),
              decoration: roundedBox,
              margin: EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          "Officail organization",
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                      Icon(Icons.check)
                    ],
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "NGOs",
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "UnBorder",
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "Others",
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
