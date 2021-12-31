import 'package:amyz_app/widgets/shared_widgets.dart';
import 'package:flutter/material.dart';

class AddAddressScreen extends StatefulWidget {
  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
  int id = 1;

  @override
  Widget build(BuildContext context) {
    String radioItem = 'Mango';
    List<String> addressTypeList = ['العمل', 'المنزل'];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 4.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                ),
                child: TextButton(
                  style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all(Colors.grey.shade300)),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'عنواني على الخريطة',
                        style: TextStyle(fontSize: 16.0, color: Colors.black),
                      ),
                      Icon(
                        Icons.location_on,
                        color: Colors.green.shade400,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'نوع العنوان',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: addressTypeList
                    .map((e) => Container(
                        width: MediaQuery.of(context).size.width * .4,
                        child: RadioListTile(
                          title: Text(e),
                          value: e,
                          selected: true,
                          groupValue: id,
                          onChanged: (val) {
                            setState(() {
                              radioItem = e;
                            });
                          },
                        )))
                    .toList(),
              ),
            ),
            Row(
              children: [
                Checkbox(value: false, onChanged: (val) {}),
                Text('عنوان الاستلام')
              ],
            ),
            dialogTxtBtn(
                context: context,
                items: ['1', '2'],
                selected: "a",
                dialogHeader: 'لمدن'),
            SizedBox(
              height: 10.0,
            ),
            addressTextForm(
              inputType: TextInputType.text,
              labelText: 'اسم/رقم الشارع',
            ),
            const SizedBox(
              height: 20.0,
            ),
            addressTextForm(
              inputType: TextInputType.text,
              labelText: 'رقم العمارة',
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Expanded(
                    child: addressTextForm(
                  inputType: TextInputType.text,
                  labelText: 'رقم الدور',
                )),
                const SizedBox(
                  width: 5.0,
                ),
                Expanded(
                    child: addressTextForm(
                  inputType: TextInputType.text,
                  labelText: 'رقم الشقة',
                )),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            DefaultTextFormField(
              inputType: TextInputType.text,
              labelText: 'اقرب معلم',
              height: 120.0,
              padding: 0.0,
              color: Colors.grey.shade200,
            ),
            const SizedBox(
              height: 20.0,
            ),
            //mobile number
            addressTextForm(
              inputType: TextInputType.text,
              labelText: 'رقم الموبايل',
            ),
            const SizedBox(
              height: 20.0,
            ),
            //phone number
            addressTextForm(
              inputType: TextInputType.text,
              labelText: 'الأرضي',
            ),
            const SizedBox(
              height: 20.0,
            ),
            //observation
            addressTextForm(
              inputType: TextInputType.text,
              labelText: 'ملاحظات',
            ),
            const SizedBox(
              height: 20.0,
            ),
            DefaultTextButton(
              btnText: 'حفظ البيانات',
              height: 50.0,
              borderRadius: 5.0,
              onPressed: () {},
            ),
            const SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget dialogTxtBtn(
          {context,
          required List<String> items,
          bool iscity = false,
          required String dialogHeader,
          required String selected}) =>
      TextButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => Dialog(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                      child: Container(
                        //  padding: EdgeInsets.all(8),
                        height: 700,
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 60.0,
                              child: Center(
                                  child: Text(
                                dialogHeader,
                                style: const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.red),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 50,
                              width: double.infinity,
                              color: Colors.grey.shade200,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  height: 22,
                                  color: Colors.grey.shade100,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Expanded(
                              child: ListView.separated(
                                  itemBuilder: (context, index) =>
                                      GestureDetector(
                                        child: SizedBox(
                                            height: 39.0,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 12.0),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 6.0),
                                                child: Text(
                                                  items[index],
                                                  style: const TextStyle(
                                                      fontSize: 18.0),
                                                ),
                                              ),
                                            )),
                                        onTap: () {
                                          if (iscity) {
                                            var _selectedCity = items[index];
                                          } else {
                                            var _selectedJob = items[index];
                                          }
                                          setState(() {});
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                  separatorBuilder: (context, index) =>
                                      separator(),
                                  itemCount: items.length),
                            ),
                          ],
                        ),
                      ),
                    ));
          },
          child: Container(
            height: 60.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.shade200,
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  '_selectedJob',
                  style: const TextStyle(fontSize: 20.0, color: Colors.black),
                )),
                const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                )
              ],
            ),
          ));

  Widget addressTextForm({
    // TextEditingController? controller,
    required TextInputType inputType,
    // Function? fieldSubmitted,
    // Function? validate,
    String? labelText = '',
    // Function? onChanged,
    IconData? prefix,
    // Function? onTappedTextForm,
    double? height = 55,
  }) =>
      Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5.0)),
        height: height,
        child: TextFormField(
          keyboardType: TextInputType.text,
          // controller: controller!,
          // onChanged: (val) {
          //   onChanged!;
          // },
          // onFieldSubmitted: (val) {
          //   fieldSubmitted!;
          // },
          // validator: (val) {
          //   validate!;
          // },
          // onTap: () {
          //   onTappedTextForm!;
          // },
          decoration: InputDecoration(
            prefixIcon: prefix != null
                ? IconButton(
                    icon: Icon(prefix),
                    onPressed: () {},
                  )
                : null,
            border: const UnderlineInputBorder(),
            labelText: labelText!,
          ),
        ),
      );
}
