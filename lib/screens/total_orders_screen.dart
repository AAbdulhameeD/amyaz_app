import 'package:amyz_app/widgets/shared_widgets.dart';
import 'package:flutter/material.dart';

class TotalOrderScreen extends StatelessWidget {
  String itemTitle;
  String orderImgUrl;
  String installmentPrice;
  String installmentMethod;

  String orderQuantity;

  String orderPayMethod;

  String orderPrice;

  TotalOrderScreen({
    required this.installmentMethod
    , required this.installmentPrice
    , required this.orderImgUrl,
    required this.itemTitle,
    required this.orderPayMethod,
    required this.orderPrice,
    required this.orderQuantity,
  });


  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        //TODO call OrderTable() class here
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.25),
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.grey.shade400)),
          child: defText("تفاصيل الطلب"),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Text(
            itemTitle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Image.network(
          orderImgUrl,
          fit: BoxFit.cover,
        ),
        Table(
          columnWidths: const {
            0: FlexColumnWidth(1.0),
            1: FlexColumnWidth(2.0)
          },
          border: TableBorder.all(color: Colors.grey.shade300),
          children: [
            TableRow(children: [
              firstColumnText('السعر كاش'), secondColumnText('$orderPrice')
            ]),
            TableRow(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                ),
                children: [
                  firstColumnText('الكمية'),
                  secondColumnText('$orderQuantity'),
                ]),
            TableRow(children: [
              firstColumnText('طريقة الدفع'),
              secondColumnText('$orderPayMethod')
            ]),
            TableRow(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                ),
                children: [
                  firstColumnText('المقدم'),
                  secondColumnText('orderPrePay'),
                ]),
            TableRow(children: [
              firstColumnText('نظام التقسط'),
              secondColumnText('$installmentMethod')
            ]),
            TableRow(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                ),
                children: [
                  firstColumnText('القسط'),
                  secondColumnText('$installmentPrice'),
                ]),
          ],
        ),
      ],
    );
  }

  Widget firstColumnText(String text) =>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text, style: TextStyle(fontWeight: FontWeight.bold),),
      );

  Widget secondColumnText(String text) =>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),),
      );

}

