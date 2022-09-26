import 'package:flutter/material.dart' hide Colors;
import 'package:test/student_enquiery_2.1.dart';
import 'colours.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: camel_case_types
class counselling extends StatefulWidget {
  const counselling({super.key});

  @override
  State<counselling> createState() => _counsellingState();
}

// ignore: camel_case_types
class _counsellingState extends State<counselling> {
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
      backgroundColor: Colors.base,
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: SizedBox(
          child: Column(
            children: [
              const Align(
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
              // ignore: avoid_unnecessary_containers
              Container(
                child: const Padding(
                  padding: EdgeInsets.only(top: 12, bottom: 12),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'At Maxxcell Overseas Education Services, We offer Study Abroad Consultancy to make students achieve their dreams of studying Abroad',
                      style: TextStyle(
                          color: Colors.accent,
                          fontFamily: 'Outfit',
                          fontStyle: FontStyle.normal,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.32),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 48),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    " Our team of professional counselors help assist aspiring students to choose their career & education path by placing them in reputable universities & colleges across the world. ",
                    style: TextStyle(
                        color: Colors.accent,
                        fontFamily: 'Outfit',
                        fontStyle: FontStyle.normal,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.32),
                  ),
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 20,
                width: 320,
                child: const Center(
                  child: Text(
                    "What do we do",
                    style: TextStyle(
                        color: Colors.accent,
                        fontFamily: 'Outfit',
                        fontStyle: FontStyle.normal,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.64),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(16.0))),
                                backgroundColor: Colors.base,
                                title: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/Group 262.svg',
                                      height: 44,
                                      width: 44,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    SizedBox(
                                      height: 36,
                                      width: 200,
                                      child: Text(
                                        'Career Counseling & Profile Assesment',
                                        style: TextStyle(
                                            color: Colors.secondary,
                                            fontSize: 14,
                                            fontFamily: 'Outfit',
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                                content: Text(
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Outfit'),
                                    'To ensure that we accurately advise on the best country, universities and course; we will first understand the profile of a student with the help of a Profile Assessment Sheet. Based on your academic qualifications, career goals, financial status and work experience, our counsellors will help you choose the right course that addresses your aspirations and goals.'),
                              ));
                    },
                    child: SvgPicture.asset(
                      'assets/images/Group 262.svg',
                      width: 64,
                      height: 64,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(16.0))),
                                backgroundColor: Colors.base,
                                title: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/Group 266.svg',
                                      height: 44,
                                      width: 44,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    SizedBox(
                                      height: 36,
                                      width: 200,
                                      child: Text(
                                        'Standardised Evaluation Tests',
                                        style: TextStyle(
                                            color: Colors.secondary,
                                            fontSize: 14,
                                            fontFamily: 'Outfit',
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                                content: Text(
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Outfit'),
                                    'Standardised tests are devised especially to evaluate students and compare their aptitude in a consistent manner. Our Admission Counsellor review any standardised test scores (e.g. GRE, GMAT, SAT, IELTS, TOEFL) that you have already taken, which might help you with your admission. They also guide you with regards to the scores that universities look for and the scores that you should aim for in order to target particular institutions. If you have not taken any of the standardised tests that is required, our Admission Counsellor will book these for you.'),
                              ));
                    },
                    child: SvgPicture.asset(
                      'assets/images/Group 266.svg',
                      width: 64,
                      height: 64,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(16.0))),
                                backgroundColor: Colors.base,
                                title: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/Group 263.svg',
                                      height: 44,
                                      width: 44,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    SizedBox(
                                      height: 36,
                                      width: 200,
                                      child: Text(
                                        'Country & University Selection',
                                        style: TextStyle(
                                            color: Colors.secondary,
                                            fontSize: 14,
                                            fontFamily: 'Outfit',
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                                scrollable: true,
                                content: SingleChildScrollView(
                                  child: Text(
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Outfit'),
                                      'After looking at a student’s profile, his/her score of a standardised test and financial capability we are able to suggest a country of study and respective universities. Overseas education does not come cheap, which means you must make an informed choice based on your goals and interests. The Admission Counsellor will shortlist a number of appropriate universities for you after analysing your profile. You can then discuss the shortlisted universities with your family and friends before finalising.'),
                                ),
                              ));
                    },
                    child: SvgPicture.asset(
                      'assets/images/Group 263.svg',
                      width: 64,
                      height: 64,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SizedBox(
                    height: 20,
                    width: 80,
                    child: Center(
                      child: Text(
                        "Career Counseling & Profile Assesment",
                        style: TextStyle(
                            fontSize: 8,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 80,
                    child: Center(
                      child: Text(
                        "Standardised Evaluation Tests",
                        style: TextStyle(
                            fontSize: 8,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 80,
                    child: Center(
                      child: Text(
                        "Country & University Selection",
                        style: TextStyle(
                            fontSize: 8,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(16.0))),
                                backgroundColor: Colors.base,
                                title: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/Group 264.svg',
                                      height: 44,
                                      width: 44,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    SizedBox(
                                      height: 36,
                                      width: 200,
                                      child: Text(
                                        'SOP, LOR & Recommendation',
                                        style: TextStyle(
                                            color: Colors.secondary,
                                            fontSize: 14,
                                            fontFamily: 'Outfit',
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                                content: Text(
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Outfit'),
                                    'SOP and additional essays are crucial documents which make universities understand student intentions towards a particular course and why a student is inclined towards a particular university. At Maxxcell Overseas Education Services, we assist students to draft essays and statement of purposes by giving them a tailored questionnaire. It helps a student understand what information needs to be mentioned and in which order it should be mentioned.'),
                              ));
                    },
                    child: SvgPicture.asset(
                      'assets/images/Group 264.svg',
                      width: 64,
                      height: 64,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(16.0))),
                                backgroundColor: Colors.base,
                                title: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/Group 265.svg',
                                      height: 44,
                                      width: 44,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    SizedBox(
                                      height: 36,
                                      width: 200,
                                      child: Text(
                                        'Financial Counselling & Guidance',
                                        style: TextStyle(
                                            color: Colors.secondary,
                                            fontSize: 14,
                                            fontFamily: 'Outfit',
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                                content: Text(
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Outfit'),
                                    'SOP and additional essays are crucial documents which make universities understand student intentions towards a particular course and why a student is inclined towards a particular university. At Maxxcell Overseas Education Services, we assist students to draft essays and statement of purposes by giving them a tailored questionnaire. It helps a student understand what information needs to be mentioned and in which order it should be mentioned.'),
                              ));
                    },
                    child: SvgPicture.asset(
                      'assets/images/Group 265.svg',
                      width: 64,
                      height: 64,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(16.0))),
                                backgroundColor: Colors.base,
                                title: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/Group 267.svg',
                                      height: 44,
                                      width: 44,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    SizedBox(
                                      height: 36,
                                      width: 200,
                                      child: Text(
                                        'VISA Counselling',
                                        style: TextStyle(
                                            color: Colors.secondary,
                                            fontSize: 14,
                                            fontFamily: 'Outfit',
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                                content: Text(
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Outfit'),
                                    'It is common knowledge that it is impossible to study in any university abroad without a relevant visa. Our Visa Counselling Services are geared towards helping you submit the right documents to ensure that there is no inadvertent delay or rejection. We assign you a study abroad VISA Consultant who provides comprehensive advice relating to collation of the relevant documentation that you need to submit along with the visa application. Our study abroad Visa Consultants also guide you through the key aspects of any interview that you may have with the High Commission or the Embassy.'),
                              ));
                    },
                    child: SvgPicture.asset(
                      'assets/images/Group 267.svg',
                      width: 64,
                      height: 64,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SizedBox(
                    height: 20,
                    width: 80,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "\t\t\t\t\tSOP, LOR & Recommendationt",
                        style: TextStyle(
                            fontSize: 8,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 80,
                    child: Center(
                      child: Text(
                        "Financial Counselling & Guidance",
                        overflow: TextOverflow.visible,
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 8,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 80,
                    child: Center(
                      child: Text(
                        "VISA Counselling",
                        style: TextStyle(
                            fontSize: 8,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 48),
                child: SizedBox(
                  height: 44,
                  width: 328,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.accent),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.secondary),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      onPressed: (() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const StudentEnquiry()),
                        );
                      }),
                      child: const Text(
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
        ),
      )),
    );
  }
}
