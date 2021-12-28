import 'package:amyz_app/widgets/shared_widgets.dart';
import 'package:flutter/material.dart';

class InstallmentItemsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            width: double.infinity,
            color: Colors.grey.shade200,
            height: 60.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.image,
                    color: Colors.red,
                  ),
                  defText('صورة البطاقة', fontSize: 16),
                  Spacer(),
                  DefaultTextButton(
                      btnText: 'تحميل', fontSize: 10, height: 35.0, width: 65.0),
                  SizedBox(
                    width: 65.0,
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            width: double.infinity,
            color: Colors.grey.shade200,
            height: 60.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.image,
                    color: Colors.red,
                  ),
                  defText('صورة الكارنيه', fontSize: 16),
                  Spacer(),
                  DefaultTextButton(
                      btnText: 'تحميل', fontSize: 10, height: 35.0, width: 60.0),
                  DefaultTextButton(
                      btnText: 'عرض', fontSize: 10, height: 35.0, width: 55.0,color: Colors.green),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Container(
            width: double.infinity,
            color: Colors.grey.shade200,
            height: 60.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.image,
                    color: Colors.red,
                  ),
                  defText('صورة البطاقة', fontSize: 16),
                  Spacer(),
                  DefaultTextButton(
                      btnText: 'تحميل', fontSize: 10, height: 35.0, width: 65.0),
                  SizedBox(
                    width: 65.0,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
