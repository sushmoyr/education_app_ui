import 'package:dean_institute_mobile_app/controllers/sample_data.dart';
import 'package:dean_institute_mobile_app/widgets/course_list_item.dart';
import 'package:dean_institute_mobile_app/widgets/custom_top_app_bar.dart';
import 'package:dean_institute_mobile_app/widgets/dynamic_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Courses extends StatelessWidget {
  Courses({Key? key}) : super(key: key);

  static const _textColor = Color(0xFF45445B);
  final _sampleData = SampleData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9E9E9),
      body: SafeArea(
        child: Column(
          //sdfdsf
          children: [
            //Header
            CustomTopAppBar(
              title: "Courses",
              trailing: Icon(Icons.search),
            ),
            Container(color: Colors.white, child: DynamicTabs()),
            SizedBox(
              height: 16.h,
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                padding: EdgeInsets.only(left: 20.w, top: 20.h, right: 20.w),
                child: GridView.builder(
                  itemCount: _sampleData.sampleCourses.length,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.w,
                      mainAxisSpacing: 8.w,
                      childAspectRatio: (160.w / 200.w)),
                  itemBuilder: (context, position) {
                    int length = _sampleData.sampleCourses.length;
                    return Padding(
                      padding: EdgeInsets.only(
                          bottom:
                              (position == length - 1 || position == length - 2)
                                  ? 8.h
                                  : 0.w),
                      child:
                          CourseListItem(_sampleData.sampleCourses[position]),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
