import 'package:amyz_app/widgets/shared_widgets.dart';
import 'package:flutter/material.dart';

class PayScreen extends StatelessWidget {
  final List<String> payMethods = [
    'قسط',
    'كاش',
    'رسوم استعلام',
    'اخري',
  ];

  PayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.25),
                  shape: BoxShape.rectangle,
                  border: Border.all(color: Colors.grey.shade400)),
              child: defText("دفع مبلغ")),
          const SizedBox(
            height: 8.0,
          ),
          defText('نوع الدفع'),
          DropdownButtonFormField(

              items: payMethods.map((String val) {
                return DropdownMenuItem(
                  value: val,
                  child: Text(
                    val,
                  ),
                );
              }).toList(),
              onChanged: (val) {}),
          const SizedBox(
            height: 8.0,
          ),
          defText('اسم العميل'),
          DefaultTextFormField(
              labelText: 'اسم العميل', inputType: TextInputType.text),
          const SizedBox(
            height: 8.0,
          ),
          defText('المبلغ'),
          DefaultTextFormField(labelText: 'المبلغ', inputType: TextInputType.text),
          const SizedBox(
            height: 8.0,
          ),
          defText('ملاحظات'),
          DefaultTextFormField(
              labelText: 'وصف المدفوعات', inputType: TextInputType.text),
          const SizedBox(
            height: 15.0,
          ),
          DefaultTextButton(btnText: 'ادفع الان', width: 120.0, fontSize: 14),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey.shade300,
          ),

        ],
      ),
    );
  }
}
