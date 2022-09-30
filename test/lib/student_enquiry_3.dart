import 'package:flutter/material.dart' hide Colors;
import 'package:flutter_svg/svg.dart';
import 'package:test/student_enquiry_4.dart';
import 'colours.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class StudentEnquiry3 extends StatefulWidget {
  const StudentEnquiry3({super.key});

  @override
  State<StudentEnquiry3> createState() => _StudentEnquiry3State();
}

class _StudentEnquiry3State extends State<StudentEnquiry3> {
  final List<String> items = [
    'Married',
    'Unmarried',
  ];
  String? selectedValue;

  List<DropdownMenuItem<String>> _addDividersAfterItems(List<String> items) {
    List<DropdownMenuItem<String>> _menuItems = [];
    for (var item in items) {
      _menuItems.addAll(
        [
          DropdownMenuItem<String>(
            value: item,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                item,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ),
          //If it's last item, we will not add Divider after it.
          if (item != items.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: Divider(
                thickness: 1,
                color: Colors.secondary,
              ),
            ),
        ],
      );
    }
    return _menuItems;
  }

  List<double> _getCustomItemsHeights() {
    List<double> _itemsHeights = [];
    for (var i = 0; i < (items.length * 2) - 1; i++) {
      if (i.isEven) {
        _itemsHeights.add(40);
      }
      //Dividers indexes will be the odd indexes
      if (i.isOdd) {
        _itemsHeights.add(4);
      }
    }
    return _itemsHeights;
  }

  bool budgetpreference = false;
  var budgetpreferencecontroller = TextEditingController();

  final List<String> budgets = [
    'INR 15,00,000 - 25,00,000',
    'INR 25,00,000 - 35,00,000',
    'INR 35,00,000 - 45,00,000',
    'INR 45,00,000 - 55,00,000',
    'INR 55,00,000 - 75,00,000',
    'INR 75,00,000 - 1,00,00,000',
    'INR 1,00,00,000+'
  ];
  String? selectedvalue1;

  List<DropdownMenuItem<String>> _addDividersAfterbudget(List<String> items) {
    List<DropdownMenuItem<String>> _menuitems = [];
    for (var budget in budgets) {
      _menuitems.addAll(
        [
          DropdownMenuItem<String>(
            value: budget,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                budget,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ),
          //If it's last item, we will not add Divider after it.
          if (budget != budgets.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: Divider(
                thickness: 1,
                color: Colors.secondary,
              ),
            ),
        ],
      );
    }
    return _menuitems;
  }

  List<double> _getCustombudgetHeights() {
    List<double> _budgetHeights = [];
    for (var i = 0; i < (budgets.length * 2) - 1; i++) {
      if (i.isEven) {
        _budgetHeights.add(40);
      }
      //Dividers indexes will be the odd indexes
      if (i.isOdd) {
        _budgetHeights.add(4);
      }
    }
    return _budgetHeights;
  }

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
      backgroundColor: Colors.background,
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
                child: SvgPicture.asset('assets/images/Progress(2).svg'),
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
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color:
                            Colors.base, //background color of dropdown button
                        border: Border.all(
                            color: Colors.secondary,
                            width: 1), //border of dropdown button
                        borderRadius: BorderRadius.circular(
                            4), //border raiuds of dropdown button
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          isExpanded: true,
                          hint: Padding(
                            padding: const EdgeInsets.only(
                                left: 9, top: 11.5, bottom: 11.5),
                            child: Text(
                              'Maritial Status',
                              style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context).hintColor,
                              ),
                            ),
                          ),
                          items: _addDividersAfterItems(items),
                          customItemsHeights: _getCustomItemsHeights(),
                          value: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value as String;
                            });
                          },
                          buttonHeight: 40,
                          dropdownMaxHeight: 200,
                          buttonWidth: 140,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 8.0),
                        ),
                      ),
                    ),
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
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color:
                            Colors.base, //background color of dropdown button
                        border: Border.all(
                            color: Colors.secondary,
                            width: 1), //border of dropdown button
                        borderRadius: BorderRadius.circular(
                            4), //border raiuds of dropdown button
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          isExpanded: true,
                          hint: Padding(
                            padding: const EdgeInsets.only(
                                left: 9, top: 11.5, bottom: 11.5),
                            child: Text(
                              'Select a budget',
                              style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context).hintColor,
                              ),
                            ),
                          ),
                          items: _addDividersAfterbudget(items),
                          customItemsHeights: _getCustombudgetHeights(),
                          //value is const its a static value it cnt be assignmed to something else
                          value: selectedvalue1,
                          onChanged: (value) {
                            setState(() {
                              selectedvalue1 = value as String;
                            });
                          },
                          buttonHeight: 40,
                          dropdownMaxHeight: 200,
                          buttonWidth: 140,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 8.0),
                        ),
                      ),
                    ),
                  ),
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
