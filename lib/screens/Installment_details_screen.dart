import 'package:amyz_app/widgets/shared_widgets.dart';
import 'package:flutter/material.dart';

class InstallmentDetailsScreen extends StatefulWidget {
  const InstallmentDetailsScreen({Key? key}) : super(key: key);

  @override
  State<InstallmentDetailsScreen> createState() =>
      _InstallmentDetailsScreenState();
}

class _InstallmentDetailsScreenState extends State<InstallmentDetailsScreen> {
  final List<String> _items = ['Aahmed', 'Bbbbbbbbbb', 'C', 'D', 'asd'];

  String _selected = '';
  String _selectedJob = '';
  String _selectedCity = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          color: Colors.grey,
          child: Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 300.0),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                )),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  children: [
                    Row(children: [
                      const Icon(
                        Icons.credit_card,
                        size: 18.0,
                        color: Colors.grey,
                      ),
                      defText("بيانات التقسيط")
                    ]),
                    Row(children: [
                      Expanded(flex: 2, child: defText('الاسم بالبطاقة')),
                      Expanded(
                          flex: 3,
                          child: DefaultTextFormField(
                              labelText: "", inputType: TextInputType.text)),
                    ]),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(children: [
                      Expanded(flex: 2, child: defText('الرقم القومي')),
                      Expanded(
                          flex: 3,
                          child: DefaultTextFormField(
                              labelText: "", inputType: TextInputType.number)),
                    ]),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(children: [
                      Expanded(flex: 2, child: defText('الوظيفة ')),
                      Expanded(
                          flex: 3,
                          child: dialogTxtBtn(
                            context: context,
                            selected: _selectedJob,
                            dialogHeader: 'الوظيفة (اختياري)',
                            items: ['تاجر', 'الصيادلة'],
                          )),
                    ]),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(children: [
                      Expanded(flex: 2, child: defText('المدينة')),
                      Expanded(
                          flex: 3,
                          child: dialogTxtBtn(
                              context: context,
                              selected: _selectedCity,
                              iscity:true,
                              dialogHeader: 'المدينة',
                              items: ['a', 'b'])),
                    ]),
                    const SizedBox(
                      height: 10.0,
                    ),
                    DefaultTextButton(btnText: "حفظ البيانات", width: 170.0),
                  ],
                ),
              ),
            ),

          ),     )
      ],
    );
  }

  Widget dialogTxtBtn(
          {context,
          required List<String> items,
            bool iscity=false,
          required String dialogHeader,required String selected}) =>
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
                                  borderRadius: BorderRadius.circular(10.0),///TODO
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
                                  itemBuilder: (context, index) => GestureDetector(
                                    child: SizedBox(
                                        height: 39.0,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12.0),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 6.0),
                                            child: Text(
                                              items[index],
                                              style: const TextStyle(fontSize: 18.0),
                                            ),
                                          ),
                                        )),
                                    onTap: () {
                                      if(iscity){
                                        _selectedCity = items[index];

                                      }else{
                                        _selectedJob=items[index];
                                      }
                                      setState(() {
                                      });
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  separatorBuilder: (context, index) => separator(),
                                  itemCount: items.length),
                            ),
                          ],
                        ),
                      ),
                    ));
          },
          child: Container(
            height: 60.0,
            width: 300,
            color: Colors.grey.shade200,
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  _selectedJob,
                  style: const TextStyle(fontSize: 20.0, color: Colors.black),
                )),
                const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                )
              ],
            ),
          ));
  //
  // Future showModal(
  //         {context,
  //         required List<String> items,
  //         required String dialogHeader}) =>
  //     showDialog(
  //         context: context,
  //         builder: (context) => Dialog(
  //               clipBehavior: Clip.antiAlias,
  //               shape: RoundedRectangleBorder(
  //                   borderRadius: BorderRadius.circular(12.0)),
  //               child: Container(
  //                 padding: EdgeInsets.all(8),
  //                 height: 700,
  //                 alignment: Alignment.center,
  //                 child: Column(
  //                   children: [
  //                     Container(
  //                       width: double.infinity,
  //                       height: 60.0,
  //                       child: Center(
  //                           child: Text(
  //                         dialogHeader,
  //                         style: TextStyle(
  //                             fontSize: 18.0,
  //                             fontWeight: FontWeight.bold,
  //                             color: Colors.white),
  //                       )),
  //                       decoration: BoxDecoration(
  //                           borderRadius: BorderRadius.circular(10.0),
  //                           color: Colors.red),
  //                     ),
  //                     SizedBox(
  //                       height: 20.0,
  //                     ),
  //                     Container(
  //                       height: 50,
  //                       width: double.infinity,
  //                       color: Colors.grey.shade200,
  //                       child: Padding(
  //                         padding: EdgeInsets.all(15.0),
  //                         child: Container(
  //                           height: 22,
  //                           color: Colors.grey.shade100,
  //                         ),
  //                       ),
  //                     ),
  //                     SizedBox(
  //                       height: 20.0,
  //                     ),
  //                     Expanded(
  //                       child: ListView.separated(
  //                           itemBuilder: (context, index) => GestureDetector(
  //                                 child: Container(
  //                                     height: 39.0,
  //                                     child: Padding(
  //                                       padding: const EdgeInsets.symmetric(
  //                                           horizontal: 12.0),
  //                                       child: Padding(
  //                                         padding: const EdgeInsets.symmetric(
  //                                             vertical: 6.0),
  //                                         child: Text(
  //                                           items[index],
  //                                           style: TextStyle(fontSize: 18.0),
  //                                         ),
  //                                       ),
  //                                     )),
  //                                 onTap: () {
  //                                   setState(() {
  //                                     _selectedJob = items[index];
  //                                   });
  //                                   Navigator.of(context).pop();
  //                                 },
  //                               ),
  //                           separatorBuilder: (context, index) => separator(),
  //                           itemCount: items.length),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ));
}
