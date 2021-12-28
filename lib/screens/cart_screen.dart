import 'package:amyz_app/widgets/shared_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) =>
                cartItem(mediaHeight, mediaWidth, "imgae", "Cart title", 5354, "كاش"),
            itemCount: 6,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: DefaultTextButton(btnText: 'متابعة', height: 50.0,width: mediaWidth*0.9,onPressed: (){},),
        )
      ],
    );
  }

  Widget cartItem(mediaHeight, mediaWidth, String imgUrl, itemTitle, itemPrice,
          payMethod) =>
      SizedBox(
        height: mediaHeight * 0.30,
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
                      Flexible(
                        fit: FlexFit.tight,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            itemTitle,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 16.0,
                              height: 1.3,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Wrap(
                        children: [
                          const SizedBox(
                            height: 4.0,
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(top: 4.0, bottom: 4.0),
                            height: mediaHeight * .035,
                            child: Row(
                              children: [
                                FloatingActionButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.add,
                                    size: 15.0,
                                  ),
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                FloatingActionButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.remove,
                                    size: 15.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                "السعر كاش ",
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
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                "طريقة الدفع",
                                style: TextStyle(color: Colors.red),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                payMethod.toString(),
                                style: const TextStyle(fontSize: 12.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional.bottomEnd,
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          width: mediaWidth * .25,
                          child: TextButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.edit_outlined,
                                  color: Colors.red,
                                ),
                                Text(
                                  'تعديل',
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ),
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
