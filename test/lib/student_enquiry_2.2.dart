import 'package:flutter/material.dart' hide Colors;
import 'package:flutter_svg/svg.dart';
//import 'package:test/student_enquiry_2.2.dart';
import 'package:test/student_enquiry_3.dart';
import 'colours.dart';
//import 'package:login/student_enquiry_3.dart';
import 'package:dropdown_search/dropdown_search.dart';

class StudentEnquiry2 extends StatefulWidget {
  const StudentEnquiry2({super.key});

  @override
  State<StudentEnquiry2> createState() => _StudentEnquiry2State();
}

class _StudentEnquiry2State extends State<StudentEnquiry2> {
  final _popupCustomValidationKey = GlobalKey<DropdownSearchState<int>>();

  //final _multiselectkey = GlobalKey<FormFieldState>();
  bool course = false;
  bool percentage10 = false;
  bool yearofpassing10 = false;
  bool percentage12 = false;
  bool yearofpassing12 = false;
  bool qualification = false;
  bool stream = false;
  bool graduationPercentage = false;
  bool backlogs = false;
  bool passing = false;
  bool institute = false;
  bool gmatScore = false;
  bool greScore = false;
  bool ieltsScore = false;

  var coursecontroller = TextEditingController();
  var percentage10controller = TextEditingController();
  var yearofpassing10controller = TextEditingController();
  var percentage12controller = TextEditingController();
  var yearofpassing12controller = TextEditingController();
  var qualificationcontroller = TextEditingController();
  var streamcontroller = TextEditingController();
  var graduationPercentagecontroller = TextEditingController();
  var backlogscontroller = TextEditingController();
  var passingcontroller = TextEditingController();
  var institutecontroller = TextEditingController();
  var gmatScorecontroller = TextEditingController();
  var greScorecontroller = TextEditingController();
  var ieltsScorecontroller = TextEditingController();

  @override
  void initState() {
    super.initState();
    coursecontroller.addListener(() {
      setState(() {
        course = coursecontroller.text.isNotEmpty;
      });
    });

    percentage10controller.addListener(() {
      setState(() {
        percentage10 = percentage10controller.text.isNotEmpty;
      });
    });

    yearofpassing10controller.addListener(() {
      setState(() {
        yearofpassing10 = yearofpassing10controller.text.isNotEmpty;
      });
    });

    percentage12controller.addListener(() {
      setState(() {
        percentage12 = percentage12controller.text.isNotEmpty;
      });
    });

    yearofpassing12controller.addListener(() {
      setState(() {
        yearofpassing12 = yearofpassing12controller.text.isNotEmpty;
      });
    });

    qualificationcontroller.addListener(() {
      setState(() {
        qualification = qualificationcontroller.text.isNotEmpty;
      });
    });

    streamcontroller.addListener(() {
      setState(() {
        stream = streamcontroller.text.isNotEmpty;
      });
    });

    graduationPercentagecontroller.addListener(() {
      setState(() {
        graduationPercentage = graduationPercentagecontroller.text.isNotEmpty;
      });
    });

    backlogscontroller.addListener(() {
      setState(() {
        backlogs = backlogscontroller.text.isNotEmpty;
      });
    });

    passingcontroller.addListener(() {
      setState(() {
        passing = passingcontroller.text.isNotEmpty;
      });
    });

    institutecontroller.addListener(() {
      setState(() {
        institute = institutecontroller.text.isNotEmpty;
      });
    });
    gmatScorecontroller.addListener(() {
      setState(() {
        gmatScore = gmatScorecontroller.text.isNotEmpty;
      });
    });
    greScorecontroller.addListener(() {
      setState(() {
        greScore = greScorecontroller.text.isNotEmpty;
      });
    });

    ieltsScorecontroller.addListener(() {
      setState(() {
        ieltsScore = ieltsScorecontroller.text.isNotEmpty;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
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
      backgroundColor: Colors.background,
      // ignore: prefer_const_constructors
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          child: SizedBox(
            child: Column(children: [
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
              Padding(
                padding: const EdgeInsets.only(top: 37),
                child: SvgPicture.asset('assets/images/Progress(1).svg'),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 32, bottom: 8),
                  child: SizedBox(
                    height: 18,
                    width: 62,
                    child: RichText(
                      text: const TextSpan(
                          text: "Country",
                          style: TextStyle(
                              color: Colors.accent,
                              fontFamily: 'Outfit',
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.64),
                          children: <TextSpan>[
                            TextSpan(
                                text: '*',
                                style: TextStyle(
                                    color: Colors.warning, fontSize: 18)),
                          ]),
                    ),
                  ),
                ),
              ),
              DropdownSearch<String>.multiSelection(
                mode: Mode.MENU,
                showSelectedItems: true,
                items: const [
                  'Australia',
                  'Canada',
                  'Germany',
                  'Ireland',
                  'New Zealand',
                  'United Kingdom',
                  'USA',
                  'Multi Country',
                  'Europe',
                  'Undecided',
                ],
                dropdownSearchDecoration:
                    InputDecoration(hintText: 'Country Preference'),
                showSearchBox: true,
                searchFieldProps: TextFieldProps(cursorColor: Colors.secondary),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 32, bottom: 8),
                  child: RichText(
                    text: const TextSpan(
                        text: "Program/Course Preference",
                        style: TextStyle(
                            color: Colors.accent,
                            fontFamily: 'Outfit',
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.64),
                        children: <TextSpan>[
                          TextSpan(
                              text: '*',
                              style: TextStyle(
                                  color: Colors.warning, fontSize: 18)),
                        ]),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: TextFormField(
                  controller: coursecontroller,
                  style: const TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontFamily: 'Outfit',
                    fontSize: 10,
                    letterSpacing: 0.64,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: InputDecoration(
                    hintText: "Program/Course Preference",
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.secondary),
                        borderRadius: BorderRadius.circular(4)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.secondary),
                        borderRadius: BorderRadius.circular(4)),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 32, bottom: 8),
                  child: Text(
                    "10th",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Outfit',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.04,
                    ),
                  ),
                ),
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  RichText(
                    text: const TextSpan(
                        text: " Percentage",
                        style: TextStyle(
                            color: Colors.accent,
                            fontFamily: 'Outfit',
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.64),
                        children: <TextSpan>[
                          TextSpan(
                              text: '*',
                              style: TextStyle(
                                  color: Colors.warning, fontSize: 18)),
                        ]),
                  ),
                  SizedBox(
                    width: 88,
                  ),
                  RichText(
                    text: const TextSpan(
                        text: "Year of Passing",
                        style: TextStyle(
                            color: Colors.accent,
                            fontFamily: 'Outfit',
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.64),
                        children: <TextSpan>[
                          TextSpan(
                              text: '*',
                              style: TextStyle(
                                  color: Colors.warning, fontSize: 18)),
                        ]),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: SizedBox(
                      height: 40,
                      width: 156,
                      child: TextFormField(
                        controller: percentage10controller,
                        style: TextStyle(
                          fontFamily: 'Outfit',
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          hintText: "Percentage",
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.secondary),
                              borderRadius: BorderRadius.circular(4)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.secondary),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: SizedBox(
                      height: 40,
                      width: 156,
                      child: TextFormField(
                        controller: yearofpassing10controller,
                        style: TextStyle(
                          fontFamily: 'Outfit',
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          hintText: "Year of Passing",
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.secondary),
                              borderRadius: BorderRadius.circular(4)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.secondary),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 32, bottom: 8),
                  child: Text(
                    "12th/Diploma",
                    style: TextStyle(
                        color: Colors.accent,
                        fontFamily: 'Outfit',
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.64),
                  ),
                ),
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  RichText(
                    text: const TextSpan(
                        text: "Percentage",
                        style: TextStyle(
                            color: Colors.accent,
                            fontFamily: 'Outfit',
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.64),
                        children: <TextSpan>[
                          TextSpan(
                              text: '*',
                              style: TextStyle(
                                  color: Colors.warning, fontSize: 18)),
                        ]),
                  ),
                  SizedBox(
                    width: 88,
                  ),
                  RichText(
                    text: const TextSpan(
                        text: "Year of Passing",
                        style: TextStyle(
                            color: Colors.accent,
                            fontFamily: 'Outfit',
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.64),
                        children: <TextSpan>[
                          TextSpan(
                              text: '*',
                              style: TextStyle(
                                  color: Colors.warning, fontSize: 18)),
                        ]),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: SizedBox(
                      height: 40,
                      width: 156,
                      child: TextFormField(
                        controller: percentage12controller,
                        style: TextStyle(
                          fontFamily: 'Outfit',
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          hintText: "Percentage",
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.secondary),
                              borderRadius: BorderRadius.circular(4)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.secondary),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: SizedBox(
                      height: 40,
                      width: 156,
                      child: TextFormField(
                        controller: yearofpassing12controller,
                        style: TextStyle(
                          fontFamily: 'Outfit',
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          hintText: "Year of Passing",
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.secondary),
                              borderRadius: BorderRadius.circular(4)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.secondary),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 32, bottom: 8),
                  child: RichText(
                    text: const TextSpan(
                        text: "Highest Qualification",
                        style: TextStyle(
                            color: Colors.accent,
                            fontFamily: 'Outfit',
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.64),
                        children: <TextSpan>[
                          TextSpan(
                              text: '*',
                              style: TextStyle(
                                  color: Colors.warning, fontSize: 18)),
                        ]),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: TextFormField(
                  controller: qualificationcontroller,
                  style: TextStyle(
                    fontFamily: 'Outfit',
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                  //need to put drop down boxes here
                  decoration: InputDecoration(
                    hintText: "Highest Qualifications",
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.secondary),
                        borderRadius: BorderRadius.circular(4)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.secondary),
                        borderRadius: BorderRadius.circular(4)),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 32, bottom: 8.0),
                  child: RichText(
                    text: const TextSpan(
                        text: "Stream of Specialisation",
                        style: TextStyle(
                            color: Colors.accent,
                            fontFamily: 'Outfit',
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.64),
                        children: <TextSpan>[
                          TextSpan(
                              text: '*',
                              style: TextStyle(
                                  color: Colors.warning, fontSize: 18)),
                        ]),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: TextFormField(
                  controller: streamcontroller,
                  style: TextStyle(
                    color: Colors.accent,
                    overflow: TextOverflow.ellipsis,
                    fontFamily: 'Outfit',
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                  //need to put drop down boxes here
                  decoration: InputDecoration(
                    hintText: "Stream of study/Specialization",
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.secondary),
                        borderRadius: BorderRadius.circular(4)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.secondary),
                        borderRadius: BorderRadius.circular(4)),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 32, bottom: 8.0),
                  child: RichText(
                    text: const TextSpan(
                        text: "Graduation Aggregate Percentage/CGPA",
                        style: TextStyle(
                            color: Colors.accent,
                            fontFamily: 'Outfit',
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.64),
                        children: <TextSpan>[
                          TextSpan(
                              text: '*',
                              style: TextStyle(
                                  color: Colors.warning, fontSize: 18)),
                        ]),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: TextFormField(
                  controller: graduationPercentagecontroller,
                  style: TextStyle(
                    color: Colors.accent,
                    overflow: TextOverflow.ellipsis,
                    fontFamily: 'Outfit',
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                  //need to put drop down boxes here
                  decoration: InputDecoration(
                    hintText:
                        "Recent Qualification with Specialization/Stream of study",
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.secondary),
                        borderRadius: BorderRadius.circular(4)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.secondary),
                        borderRadius: BorderRadius.circular(4)),
                  ),
                ),
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 32,
                      bottom: 8,
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: RichText(
                        text: const TextSpan(
                            text: "Number of Backlogs*",
                            style: TextStyle(
                                color: Colors.accent,
                                fontFamily: 'Outfit',
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.64),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '*',
                                  style: TextStyle(
                                      color: Colors.warning, fontSize: 18)),
                            ]),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 29,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32, bottom: 8),
                    child: RichText(
                      text: const TextSpan(
                          text: "Year of Passing*",
                          style: TextStyle(
                              color: Colors.accent,
                              fontFamily: 'Outfit',
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.64),
                          children: <TextSpan>[
                            TextSpan(
                                text: '*',
                                style: TextStyle(
                                    color: Colors.warning, fontSize: 18)),
                          ]),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: SizedBox(
                      height: 40,
                      width: 156,
                      child: TextFormField(
                        controller: backlogscontroller,
                        style: TextStyle(
                          fontFamily: 'Outfit',
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          hintText: "Number",
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.secondary),
                              borderRadius: BorderRadius.circular(4)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.secondary),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: SizedBox(
                      height: 40,
                      width: 156,
                      child: TextFormField(
                        controller: passingcontroller,
                        style: TextStyle(
                          fontFamily: 'Outfit',
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          hintText: "Year of Passing",
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.secondary),
                              borderRadius: BorderRadius.circular(4)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.secondary),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 32, bottom: 8),
                  child: RichText(
                    text: const TextSpan(
                        text: "Graduating Educational Institute",
                        style: TextStyle(
                            color: Colors.accent,
                            fontFamily: 'Outfit',
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.64),
                        children: <TextSpan>[
                          TextSpan(
                              text: '*',
                              style: TextStyle(
                                  color: Colors.warning, fontSize: 18)),
                        ]),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: TextFormField(
                  controller: institutecontroller,
                  style: TextStyle(
                    color: Colors.accent,
                    fontFamily: 'Outfit',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    hintText: "Name of College",
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.secondary),
                        borderRadius: BorderRadius.circular(4)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.secondary),
                        borderRadius: BorderRadius.circular(4)),
                  ),
                ),
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 32,
                      bottom: 8,
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: RichText(
                        text: const TextSpan(
                            text: "GMAT Scores",
                            style: TextStyle(
                                color: Colors.accent,
                                fontFamily: 'Outfit',
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.64),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '*',
                                  style: TextStyle(
                                      color: Colors.warning, fontSize: 18)),
                            ]),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 83,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32, bottom: 8),
                    child: RichText(
                      text: const TextSpan(
                          text: "GRE Scores",
                          style: TextStyle(
                              color: Colors.accent,
                              fontFamily: 'Outfit',
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.64),
                          children: <TextSpan>[
                            TextSpan(
                                text: '*',
                                style: TextStyle(
                                    color: Colors.warning, fontSize: 18)),
                          ]),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: SizedBox(
                      height: 40,
                      width: 156,
                      child: TextFormField(
                        controller: gmatScorecontroller,
                        style: TextStyle(
                          color: Colors.accent,
                          fontFamily: 'Outfit',
                          fontStyle: FontStyle.normal,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          hintText: "Type Score",
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.secondary),
                              borderRadius: BorderRadius.circular(4)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.secondary),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: SizedBox(
                      height: 40,
                      width: 156,
                      child: TextFormField(
                        controller: greScorecontroller,
                        style: TextStyle(
                          fontFamily: 'Outfit',
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          hintText: "Type Score",
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.secondary),
                              borderRadius: BorderRadius.circular(4)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.secondary),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 32, bottom: 8),
                  child: RichText(
                    text: const TextSpan(
                        text: "IELTS Scores",
                        style: TextStyle(
                            color: Colors.accent,
                            fontFamily: 'Outfit',
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.64),
                        children: <TextSpan>[
                          TextSpan(
                              text: '*',
                              style: TextStyle(
                                  color: Colors.warning, fontSize: 18)),
                        ]),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: SizedBox(
                  height: 40,
                  width: 154,
                  child: TextFormField(
                    controller: ieltsScorecontroller,
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      hintText: "Type Score",
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.secondary),
                          borderRadius: BorderRadius.circular(4)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.secondary),
                          borderRadius: BorderRadius.circular(4)),
                    ),
                  ),
                ),
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: RichText(
                    text: const TextSpan(
                        text: "*",
                        style: TextStyle(
                            color: Colors.warning,
                            fontFamily: 'Outfit',
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.64),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Mandatory Fields',
                              style: TextStyle(
                                  color: Colors.accent,
                                  fontSize: 14,
                                  fontFamily: 'Outfit',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.64)),
                        ]),
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32, bottom: 108),
                child: SizedBox(
                  height: 44,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: course
                        ? percentage10
                            ? yearofpassing10
                                ? percentage12
                                    ? yearofpassing12
                                        ? qualification
                                            ? stream
                                                ? graduationPercentage
                                                    ? backlogs
                                                        ? passing
                                                            ? institute
                                                                ? gmatScore
                                                                    ? greScore
                                                                        ? ieltsScore
                                                                            ? () {
                                                                                Navigator.of(context).push(
                                                                                  MaterialPageRoute(builder: (context) => const StudentEnquiry3()),
                                                                                );
                                                                              }
                                                                            : null
                                                                        : null
                                                                    : null
                                                                : null
                                                            : null
                                                        : null
                                                    : null
                                                : null
                                            : null
                                        : null
                                    : null
                                : null
                            : null
                        : null,
                    style: ElevatedButton.styleFrom(
                      disabledBackgroundColor: Colors.disable,
                      disabledForegroundColor: Colors.outline,
                      foregroundColor: Colors.accent,
                      backgroundColor: Colors.secondary,
                      shape: RoundedRectangleBorder(
                          // side: BorderSide(color: Colors.secondary, width: 1),
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(14),
                      child: Text(
                        'SUBMIT',
                        style: TextStyle(fontSize: 16, color: Colors.accent),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
