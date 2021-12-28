import 'package:amyz_app/widgets/shared_widgets.dart';
import 'package:flutter/material.dart';

class CompareScreen extends StatelessWidget {
  const CompareScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => compareItemWidget(
                itemPrice: 5865,
                context: context,
                imgUrl:
                    "https://images.philips.com/is/image/PhilipsConsumer/58PUT6604_81-IMS-ar_EG?\$jpglarge\$&wid=960",
                itemDetails:
                    'https://images.philips.com/is/image/Phge/PhilipsConsumer/58PUT6604ge/PhilipsConsumer/58PUT6604ge/PhilipsConsumer/58PUT6604ge/PhilipsConsumer/58PUT6604ge/PhilipsConsumer/58PUT6604ge/PhilipsConsumer/58PUT6604ilipsConsumer/58PUT6604_81-IMS-ar_EG?\$jpglarge\$&wid=960,'),
            itemCount: 8,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: DefaultTextButton(
            btnText: 'قارن',
            width: mediaWidth * 0.95,
          ),
        ),
      ],
    ));
  }
}

Widget compareItemWidget(
    {required String imgUrl,
    required String itemDetails,
    required BuildContext context,
    required double itemPrice}) {
  final mediaWidth = MediaQuery.of(context).size.width;
  final mediaHeight = MediaQuery.of(context).size.height;

  return SizedBox(
    width: mediaWidth,
    height: mediaHeight * 0.15,
    child: Card(
      elevation: 2.0,
      child: Row(
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: SizedBox(
                      width: mediaWidth * .05,
                      height: mediaHeight * .02,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.close,
                          size: 16.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    itemDetails,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 15.0,
                      wordSpacing: 0.4,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "السعر ",
                        style: TextStyle(color: Colors.red),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "${itemPrice.toString()} ج.م ",
                        style: const TextStyle(fontSize: 12.0),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}
