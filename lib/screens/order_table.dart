import 'package:flutter/material.dart';

class OrderTable extends StatelessWidget {
  String specialMark;
  String orderNumber;
  String status;
  String orderDate;
  String totalOrder;
  String city;
  String street;
  String buildingNumber;
  String floorNumber;
  String mobileNumber;
  String phoneNumber;
  OrderTable({Key? key,
    required this.specialMark,
    required this.orderNumber,
    required this.status,
    required this.orderDate,
    required this.totalOrder,
    required this.city,
    required this.street,
    required this.buildingNumber,
    required this.floorNumber,
    required this.mobileNumber,
    required this.phoneNumber,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Table(
            border: TableBorder.all(color: Colors.grey.shade300),
            children: [
              TableRow(children: [
                firstColumnText('رقم الطلب'),
                secondColumnText(orderNumber),
                firstColumnText('الحالة'),
                secondColumnText(status),
              ]),
              TableRow(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                  ),
                  children: [
                    firstColumnText('تاريخ الطلب'),
                    secondColumnText(orderDate),
                    firstColumnText('اجمالى الطلب'),
                    secondColumnText(totalOrder),
                  ]),
            ],
          ),
          Table(
            border: TableBorder.all(color: Colors.grey.shade300),
            children: [
              TableRow(children: [
                TableCell(child: firstColumnText('عنوان التسليم'))
              ]),
            ],
          ),
          Table(
            border: TableBorder.all(color: Colors.grey.shade300),
            children: [
              TableRow(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                  ),
                  children: [
                    firstColumnText('المدينة'),
                    secondColumnText(city),
                    firstColumnText('الشارع'),
                    secondColumnText(street),
                  ]),
              TableRow(children: [
                firstColumnText('اسم/رقم العقار'),
                secondColumnText(buildingNumber),
                firstColumnText('الطابق/رقم الشقة'),
                secondColumnText(floorNumber),
              ]),
              TableRow(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                  ),
                  children: [
                    firstColumnText('رقم الهاتف'),
                    secondColumnText(phoneNumber),
                    firstColumnText('المحمول'),
                    secondColumnText(mobileNumber),
                  ]),
            ],
          ),
          Table(
            columnWidths: const {
              0: FlexColumnWidth(1.0),
              1: FlexColumnWidth(3.0)
            },
            border: TableBorder.all(color: Colors.grey.shade300),
            children: [
              TableRow(children: [
                TableCell(child: firstColumnText('علامة مميزة')),
                TableCell(child: firstColumnText(specialMark)),
              ]),
            ],
          ),
        ],
      ),
    );
  }

  Widget firstColumnText(String text) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      );

  Widget secondColumnText(String text) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: const TextStyle(color: Colors.black),
        ),
      );
}
