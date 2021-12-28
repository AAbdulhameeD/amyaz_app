import 'package:amyz_app/widgets/shared_widgets.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => notifyItem("dummyyyyydummyyyyydummyyyyydummyyyyydummyyyyydummyyyyy","https://images.philips.com/is/image/PhilipsConsumer/58PUT6604_81-IMS-ar_EG?\$jpglarge\$&wid=960"),
        separatorBuilder: (context, index) => separator(),
        itemCount: 10);
  }
}

Widget notifyItem( notifyText, String imgUrl) => Padding(
      padding:  const EdgeInsets.symmetric(vertical: 1.0),
      child: SizedBox(
        width: double.infinity,
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
                padding:  const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text("$notifyText",
                  maxLines: 8,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 15.0,
                    wordSpacing: 0.4,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
