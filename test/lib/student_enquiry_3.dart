import 'package:flutter/material.dart' hide Colors;
import 'package:test/student_enquiry_4.dart';
import 'colours.dart';

class StudentEnquiry3 extends StatefulWidget {
  const StudentEnquiry3({super.key});

  @override
  State<StudentEnquiry3> createState() => _StudentEnquiry3State();
}

class _StudentEnquiry3State extends State<StudentEnquiry3> {
  static const List<String> list = <String>['Married', 'Unmarried'];
  String dropdownValue = list.first;

  static const List<String> budget = <String>[
    'INR 15,00,000 - 25,00,000',
    'INR 25,00,000 - 35,00,000',
    'INR 35,00,000 - 45,00,000',
    'INR 45,00,000 - 55,00,000',
    'INR 55,00,000 - 75,00,000',
    'INR 75,00,000 - 1,00,00,000',
    'INR 1,00,00,000+'
  ];
  String? dropdownvalue1;
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
              const Padding(
                padding: EdgeInsets.only(top: 32, bottom: 8),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: SizedBox(
                    height: 18,
                    child: Text(
                      "Pervious Immigration History",
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
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: TextFormField(
                  style: const TextStyle(
                    fontFamily: 'Outfit',
                    fontSize: 10,
                    letterSpacing: 0.64,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Previous Immegration History (If Any)',
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.secondary),
                        borderRadius: BorderRadius.circular(4)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.secondary),
                        borderRadius: BorderRadius.circular(4)),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 17, bottom: 8),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Maritial Status',
                    style: TextStyle(
                        fontFamily: 'Outfit',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.64),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: SizedBox(
                    height: 40,
                    width: 154,
                    child: DropdownButtonFormField(
                        decoration: InputDecoration(
                          hintText: 'Center',
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.secondary),
                              borderRadius: BorderRadius.circular(4)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.secondary),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_drop_down),
                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem(
                              value: value,
                              child: Text(
                                value,
                                style: const TextStyle(color: Colors.accent),
                              ));
                        }).toList()),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 17, bottom: 8),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    height: 18,
                    width: 97,
                    child: Text(
                      'If Married',
                      style: TextStyle(
                          fontFamily: 'Outfit',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.64),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: TextFormField(
                  style: const TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontFamily: 'Outfit',
                    fontSize: 10,
                    letterSpacing: 0.64,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: InputDecoration(
                    hintText:
                        'Spouse Qualification, Employment and Immigration status Residential Address',
                    hintMaxLines: 2,
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.secondary),
                        borderRadius: BorderRadius.circular(4)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.secondary),
                        borderRadius: BorderRadius.circular(4)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 17, bottom: 8),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    height: 18,
                    width: double.infinity,
                    child: RichText(
                      text: TextSpan(
                          text: "Budget Preference",
                          style: TextStyle(
                              color: Colors.accent,
                              fontFamily: 'Outfit',
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.64),
                          children: const <TextSpan>[
                            TextSpan(
                                text: '*',
                                style: TextStyle(
                                    color: Colors.warning,
                                    fontSize: 16,
                                    fontFamily: 'Outfit',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.64)),
                          ]),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    hintText: 'Select a Budget',
                    hintStyle: const TextStyle(
                      fontSize: 10,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.2,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.secondary),
                        borderRadius: BorderRadius.circular(4)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.secondary),
                        borderRadius: BorderRadius.circular(4)),
                  ),
                  items: budget.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(color: Colors.accent),
                        ));
                  }).toList(),
                  value: dropdownvalue1,
                  icon: const Icon(Icons.arrow_drop_down),
                  onChanged: (value1) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownvalue1 = value1 as String?;
                    });
                  },
                ),
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.only(top: 32, bottom: 8),
                child: const Text(
                  "Any Additional Information you would like us to know",
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Outfit',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    letterSpacing: 0.64,
                  ),
                ),
              ),
              SizedBox(
                height: 37,
                width: double.infinity,
                child: TextFormField(
                  style: const TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontFamily: 'Outfit',
                    fontSize: 10,
                    letterSpacing: 0.64,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Your Answer',
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.secondary),
                        borderRadius: BorderRadius.circular(4)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.secondary),
                        borderRadius: BorderRadius.circular(4)),
                  ),
                ),
              ),
              // ignore: prefer_const_constructors
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 32),
                  child: RichText(
                    text: const TextSpan(
                        text: "*",
                        style: TextStyle(
                            color: Colors.warning,
                            fontFamily: 'Outfit',
                            fontStyle: FontStyle.normal,
                            fontSize: 16,
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
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: SizedBox(
                  height: 44,
                  width: double.infinity,
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
                              builder: (context) => const StudentEnquiry4()),
                        );
                      }),
                      child: const Text(
                        "SUBMIT",
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
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
