import 'package:amyz_app/widgets/shared_widgets.dart';
import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          socialBtn(img: 'assets/facebook.png', onTap: () {}),
                          socialBtn(img: 'assets/instagram.png', onTap: () {}),
                          socialBtn(img: 'assets/twitter.png', onTap: () {}),
                          socialBtn(img: 'assets/whatsapp.png', onTap: () {}),
                          socialBtn(img: 'assets/youtube.png', onTap: () {}),
                        ],
                      ))),
              const SizedBox(
                height: 25.0,
              ),
              defText('التليفون : 6897', fontSize: 16.0),
              const SizedBox(
                height: 5.0,
              ),
              defText('البريد الالكتروني : info@amyz.com', fontSize: 16.0),
              const SizedBox(
                height: 5.0,
              ),
              DefaultTextButton(
                  btnText: 'الذهاب الي الفرع', fontSize: 20.0, height: 50.0)
            ],
          ),
        ),
        Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(
                bottom: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10.0
                ),
                defText('تواصل معنا', fontSize: 17.0),
                Row(
                  children: [
                    Container(
                      color: Colors.red,
                      height: 1.0,
                      width: 90.0,
                    ),
                    Expanded(
                        child: Container(
                      height: 1.0,
                      color: Colors.grey.shade200,
                    ))
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: defText('الاسم',
                      padding: 0.0, fontSize: 16.0, color: Colors.grey),
                ),
                DefaultTextFormField(
                    inputType: TextInputType.text,
                    validate: () {},
                    labelText: '',
                    prefix: Icons.person),
                const SizedBox(height: 15.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: defText('البريد الالكتروني',
                      padding: 0.0, fontSize: 16.0, color: Colors.grey),
                ),
                DefaultTextFormField(
                    inputType: TextInputType.text,
                    validate: () {},
                    labelText: '',
                    prefix: Icons.email),
                const SizedBox(height: 15.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: defText('الهاتف',
                      padding: 0.0, fontSize: 16.0, color: Colors.grey),
                ),
                DefaultTextFormField(
                    inputType: TextInputType.text,
                    validate: () {},
                    labelText: '',
                    prefix: Icons.phone_android), const SizedBox(height: 15.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: defText('الرسالة',
                      padding: 0.0, fontSize: 16.0, color: Colors.grey),
                ),
                DefaultTextFormField(
                  height: 120.0,
                    inputType: TextInputType.text,
                    validate: () {},
                    labelText: '',
                    prefix: Icons.message),
                const SizedBox(height: 15.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: DefaultTextButton(btnText: 'ارسال', width: 120.0,height: 50.0),
                ),

              ],
            ),
          ),
        ))
      ],
    );
  }

  Widget socialBtn({required String img, required Function onTap}) => InkWell(
        onTap: () {
          onTap;
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset(
                img,
                fit: BoxFit.contain,
              ),
              radius: 14.0,
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
      );
}
