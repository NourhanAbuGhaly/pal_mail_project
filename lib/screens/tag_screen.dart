import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pal_mail_project/screens/new_inbox.dart';
import 'package:pal_mail_project/widget/custom_header.dart';
import 'package:pal_mail_project/widget/tag_container.dart';
import '../utils/constant.dart';

class TagScreen extends StatefulWidget {
  static const String id = 'TagScreen';

  const TagScreen({Key? key}) : super(key: key);

  @override
  State<TagScreen> createState() => _TagScreenState();
}

class _TagScreenState extends State<TagScreen> {
  late TextEditingController _tagsController ;
  List<String> _tags= <String>[];
  @override
  void initState() {
     super.initState();
     _tagsController=TextEditingController();

  }
  @override
  void dispose()  {
    _tagsController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InkWell(
                onTap: ()=>Navigator.pushNamed(context, NewInbox.id),
                  child: const CustomHeader(title: 'Tages')),
              SizedBox(height: 50.h,),
              Text("Tags",style:GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),),
              Container(
                margin: const EdgeInsets .all(5),
                padding: const EdgeInsets .all(10),
                decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey
                    )
                  ]
                ),
                child: Wrap(
                  spacing: 10,

                  children: _tags.map((tag){
                    return Chip(
                      elevation: 5,
                      deleteIcon: const Icon(Icons.close,size: 18,),
                      deleteIconColor: Colors.red,
                      onDeleted: ()=>_delete(tag),
                      avatar: const Icon(Icons.tag,size: 18,),
                      backgroundColor: Colors.grey.shade300,
                      labelStyle: GoogleFonts.poppins(
                          color: Colors.white
                        ),
                      label: Text(tag));
                  }).toList(),
                ),
              ),
              SizedBox(height: 50.h,),
              Flexible(
                child: TextField(
                controller:_tagsController ,
                keyboardType: TextInputType.text,
                style:GoogleFonts.poppins() ,
                maxLength:15 ,
                onSubmitted: (String value)=>_performSave() ,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  counterText: "",
                  labelText: "Enter Tags",
                  labelStyle: GoogleFonts.poppins(),
                  prefixIcon: const Icon(Icons.tag),
                  suffixIcon: IconButton(onPressed: ()=>_performSave(),icon: const Icon(Icons.save),),
                  enabledBorder: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.grey.shade400)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.blue.shade400)
                  ),


                ),
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 35.h),
              //   child: Container(
              //     decoration: inboxDecoration,
              //     child: Padding(
              //       padding: const EdgeInsets.all(20),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: const [
              //               TagContainer(
              //                 text: 'All Tags',
              //               ),
              //               TagContainer(
              //                 text: '#Urgent ',
              //               ),
              //               TagContainer(
              //                 text: '#Egyptian Military ',
              //               ),
              //             ],
              //           ),
              //           SizedBox(
              //             height: 8.h,
              //           ),
              //           const TagContainer(
              //             text: '#New ',
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
  void  _performSave(){
    if(_checkData()){
      _save();
    }
  }
  bool  _checkData(){
    if(_tagsController.text.isNotEmpty){
      return true;
    }
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: const Text("Enter tags to add"),backgroundColor: Colors.red.shade300,));
    return false; 
  }
  void _save(){
    setState(()=>_tags.add(_tagsController.text));
    _tagsController.clear();
  }
  void _delete(String tag){
  setState(() {
  _tags.remove(tag);

  });
  }
}
