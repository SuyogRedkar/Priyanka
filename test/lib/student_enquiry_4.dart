import 'package:flutter/material.dart' hide Colors;
import 'package:flutter_svg/svg.dart';
import 'colours.dart';

class StudentEnquiry4 extends StatefulWidget {
  const StudentEnquiry4({super.key});

  @override
  State<StudentEnquiry4> createState() => _StudentEnquiry4State();
}

class _StudentEnquiry4State extends State<StudentEnquiry4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          ),
        ],
        iconTheme: const IconThemeData(color: Colors.base),
        backgroundColor: Colors.primary,
        toolbarHeight: 120,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
            child: SizedBox(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      width: 279,
                      height: 30,
                      child: Text(
                        "Book a Free Counselling",
                        style: TextStyle(
                            color: Colors.accent,
                            fontFamily: 'Outfit-SemiBold',
                            fontStyle: FontStyle.normal,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.64),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 37),
                    child: SvgPicture.asset('assets/images/Progress(3).svg'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 270,
                    ),
                    child: SizedBox(
                      height: 25.86,
                      width: 141,
                      child: Text("Thank you!",
                          style: TextStyle(
                              color: Colors.accent,
                              fontFamily: 'Outfit-SemiBold',
                              fontStyle: FontStyle.normal,
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.64)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 32),
                    child: SizedBox(
                      height: 18,
                      width: 328,
                      child: Text(
                          " Please wait till our counselors get back to you.",
                          style: TextStyle(
                              color: Colors.accent,
                              fontFamily: 'Outfit-SemiBold',
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.64)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 32),
                    child: SizedBox(
                      height: 44,
                      width: 328,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.accent),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.secondary),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          onPressed: (() {}),
                          child: Text(
                            "BOOK A COUNSELLING",
                            style: TextStyle(
                              fontSize: 16,
                              letterSpacing: 5.1,
                              color: Colors.accent,
                              fontFamily: 'Outfit',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
