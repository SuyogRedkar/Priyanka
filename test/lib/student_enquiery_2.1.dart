import 'package:flutter/material.dart' hide Colors;
import 'package:test/student_enquiry_2.2.dart';
import 'colours.dart';

class StudentEnquiry extends StatefulWidget {
  const StudentEnquiry({super.key});

  @override
  State<StudentEnquiry> createState() => _StudentEnquiryState();
}

class _StudentEnquiryState extends State<StudentEnquiry> {
  bool fname = false;
  bool lname = false;
  bool contact = false;
  bool email = false;
  var fnamecontroller = TextEditingController();
  var lnamecontroller = TextEditingController();
  var contactcontroller = TextEditingController();
  var emailcontroller = TextEditingController();

  static const List<String> list = <String>['Margao', 'Panjim'];
  String? dropdownValue;
  @override
  void initState() {
    super.initState();
    fnamecontroller.addListener(() {
      setState(() {
        fname = fnamecontroller.text.isNotEmpty;
      });
    });
    lnamecontroller.addListener(() {
      setState(() {
        lname = lnamecontroller.text.isNotEmpty;
      });
    });
    contactcontroller.addListener(() {
      setState(() {
        contact = contactcontroller.text.isNotEmpty;
      });
    });
    emailcontroller.addListener(() {
      setState(() {
        email = emailcontroller.text.isNotEmpty;
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
      backgroundColor: Colors.base,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
          child: SizedBox(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
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
                // ignore: prefer_const_constructors
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 32, bottom: 8),
                    //used rich text to add 2 diff colors
                    child: RichText(
                      text: const TextSpan(
                          text: "Your Name",
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
                                    color: Colors.warning, fontSize: 16)),
                          ]),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 154,
                      child: TextFormField(
                        controller: fnamecontroller,
                        style: const TextStyle(
                          fontFamily: 'Outfit',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          hintText: 'First Name',
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.secondary),
                              borderRadius: BorderRadius.circular(4)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.secondary),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                            return 'Enter Correct Name';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: 154,
                      child: TextFormField(
                        controller: lnamecontroller,
                        style: const TextStyle(
                          fontFamily: 'Outfit',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Last Name',
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.secondary),
                              borderRadius: BorderRadius.circular(4)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.secondary),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                            return 'Enter Correct Name';
                          }
                          return null;
                        },
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 17, bottom: 8),
                    child: RichText(
                      text: const TextSpan(
                          text: "WhatsApp Number",
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
                                    color: Colors.warning, fontSize: 16)),
                          ]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: TextFormField(
                    controller: contactcontroller,
                    style: const TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      hintText: 'WhatsApp Number',
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.secondary),
                          borderRadius: BorderRadius.circular(4)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.secondary),
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty || value.length < 10) {
                        return 'Enter Correct Number';
                      }
                      return null;
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 17, bottom: 8),
                    child: RichText(
                      text: const TextSpan(
                          text: "Email ID",
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
                                    color: Colors.warning, fontSize: 16)),
                          ]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: TextFormField(
                    controller: emailcontroller,
                    style: const TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Email ID*',
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.secondary),
                          borderRadius: BorderRadius.circular(4)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.secondary),
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty || value.length < 10) {
                        return 'Enter Correct Number';
                      }
                      return null;
                    },
                  ),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    RichText(
                      text: const TextSpan(
                          text: "Choose your Center",
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
                      width: 75,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                        text: const TextSpan(
                            text: "Date of Birth",
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
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 8.0,
                      ),
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
                            items: list
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem(
                                  value: value,
                                  child: Text(
                                    value,
                                    style:
                                        const TextStyle(color: Colors.accent),
                                  ));
                            }).toList()),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 8.0),
                      child: SizedBox(
                        height: 40,
                        width: 154,
                        child: TextFormField(
                          style: const TextStyle(
                            fontFamily: 'Outfit',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          decoration: InputDecoration(
                            hintText: 'DD-MM-YY',
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
                    )
                  ],
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
                            fontSize: 14,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Mandatory Feilds',
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
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 32,
                ),
                SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: fname
                        ? lname
                            ? contact
                                ? email
                                    ? () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const StudentEnquiry2()),
                                        );
                                      }
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
