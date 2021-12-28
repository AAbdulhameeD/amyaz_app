import 'package:amyz_app/widgets/colors.dart';
import 'package:amyz_app/widgets/shared_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) => favItem("dummyyyyydummyyyyydummyyyyydummyyyyydummyyyyydummyyyyydummyyyyydummyyyyydummyyyyydummyyyyydummyyyyydummyyyyydummyyyyydummyyyyydummyyyyydummyyyyy",
            "https://images.philips.com/is/image/PhilipsConsumer/58PUT6604_81-IMS-ar_EG?\$jpglarge\$&wid=960","58","4552"),
        itemCount: 10);
  }
}

Widget favItem(favHeader, String imgUrl, installment, cash) => Row(
  children: [
    Expanded(
      flex: 1,
      child: Image.network(
        imgUrl,
        fit: BoxFit.cover,
      ),
    ),
    Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: Text(
                "$favHeader",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 15.0,
                  wordSpacing: 0.4,
                ),
              ),
            ),
            Row(
              children: [
                DefaultTextButton(
                    fontSize: 13,
                    height: 35.0,
                    btnText: 'كاش',
                    color:grey200,
                    width: 90.0),
                const Spacer(),
                defText('$cash  ج.م')
              ],
            ),
            const SizedBox(
              height: 3.0,
            ),
            Row(
              children: [
                DefaultTextButton(
                    fontSize: 13,
                    height: 35.0,
                    btnText: 'تقسيط',
                    color: Colors.red,
                    width: 90.0),
                const Spacer(),
                defText('$installment ج.م')
              ],
            ),
            separator(),
            Row(
              children: [
                const Icon(Icons.favorite,color:Colors.red),
                const SizedBox(width: 15.0,),
                Expanded(
                  child: RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    itemSize: 25.0,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      size: 15.0,
                      color: Colors.red,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                Icon(Icons.bar_chart_sharp,color:Colors.grey.shade400)
              ],
            ),
          ],
        ),
      ),
    )
  ],
);
