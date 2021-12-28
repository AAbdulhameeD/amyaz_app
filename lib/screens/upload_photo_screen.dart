import 'package:flutter/material.dart';

class UploadPhotoScreen extends StatelessWidget {
  const UploadPhotoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 500.0,
        width: double.infinity,
        color: Colors.grey.shade300,
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.grey.shade300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Row(
                children: [
                  uploadPhotoBtn(btnTxt: 'الكاميرا', icon: Icons.camera_alt,onPressed: (){}),
                  const SizedBox(
                    width: 5.0,
                  ),
                  uploadPhotoBtn(btnTxt: 'مكتبة الصور', icon: Icons.image_outlined,onPressed: (){}),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget uploadPhotoBtn({required String btnTxt, required IconData icon,required Function onPressed}) =>
      Expanded(
        child: Container(
          color: Colors.red,
          child: TextButton(
            onPressed: () {onPressed;},
            child: Row(
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                ),
                const SizedBox(width: 20.0,),
                Text(btnTxt,style: const TextStyle(color: Colors.white,fontSize: 14.0),)
              ],
            ),
          ),
        ),
      );
}
