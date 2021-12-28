import 'package:amyz_app/widgets/shared_widgets.dart';
import 'package:flutter/material.dart';

class OrderDetailsScreen extends StatelessWidget {
  String orderNumber;
  String orderDate;
  String orderTitle;
  String orderStatus;
  String totalOrdersPrice;
  String orderImgUrl;

  OrderDetailsScreen({Key? key,
    required this.orderNumber,
    required this.orderDate,
    required this.orderTitle,
    required this.orderStatus,
    required this.totalOrdersPrice,
    required this.orderImgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "رقم الطلب",
                ),
                Text("تاريخ الطلب")
              ],
            ),
            const SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  orderNumber,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  orderDate,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(
              height: 5.0,
            ),
            separator(),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Image.network(
                    orderImgUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            orderTitle,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: Text(
                            "حالة الطلب",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            orderStatus,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          children: [
                            const Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: 3.0),
                              child: Text(
                                'اجمالى الطلب:',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                            Text(
                              totalOrdersPrice,
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            separator(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.0),
                      child: Text(
                        'عرض تفاصيل الطلب',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.0),
                      child: Text(
                        'ادفع',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
