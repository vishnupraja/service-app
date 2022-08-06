import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:serviceapp/forget_password.dart';

class AddEmployee extends StatefulWidget {
  const AddEmployee({Key? key}) : super(key: key);

  @override
  State<AddEmployee> createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee> {
  String? _fileName;
  List<PlatformFile>? _paths;
  String? _directoryPath;
  String? _extension;
  bool _loadingPath = false;

  void _openFileExplorer() async {
    setState(() => _loadingPath = true);
    try {
      _directoryPath = null;
      _paths = (await FilePicker.platform.pickFiles(
        allowedExtensions: (_extension?.isNotEmpty ?? false)
            ? _extension?.replaceAll(' ', '').split(',')
            : null,
      ))
          ?.files;
    } on PlatformException catch (e) {
      print("Unsupported operation" + e.toString());
    } catch (ex) {
      print(ex);
    }
    if (!mounted) return;
    setState(() {
      _loadingPath = false;
      print(_paths!.first.extension);
      _fileName =
          _paths != null ? _paths!.map((e) => e.name).toString() : '...';
    });
  }

  TextEditingController FullNameCtr = TextEditingController();
  TextEditingController MobailCtr = TextEditingController();
  TextEditingController EmailCtr = TextEditingController();
  TextEditingController AddressCtr = TextEditingController();
  TextEditingController DateCtr = TextEditingController();

  final List<String> item = [
    'Tata',
    'Alphawizz',
    'infosys',
    'veritas',
    'google',
    "jkhlkij",
    "jkhkjh",
    "jkhj",
    "jkhgkuh",
  ];
  String? selectedValue1;
  String? selectedValue2;

  // String? selectedValue3;
  final List<String> items = [
    'male',
    'female',
    'other',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE9F0FF),
        appBar: AppBar(
            title: Text(
              'Add Employee',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/appbar.png'),
                      fit: BoxFit.fill)),
            ),
            leading: InkWell(
              child: Container(
                margin: EdgeInsets.all(10),
                height: 20,
                width: 30,
                decoration: BoxDecoration(
                    color: Color(0xff8D5321),
                    borderRadius: BorderRadius.circular(20)),
                child: Icon(Icons.keyboard_arrow_left_outlined),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            )),
        body: ListView(children: [
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: FullNameCtr,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffFFFFFF),
                      hintText: 'Full name',
                      hintStyle: TextStyle(fontSize: 13),
                      contentPadding: EdgeInsets.only(top: 5, right: 16),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xffF79F10),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  maxLength: 10,
                  controller: MobailCtr,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      counterText: "",
                      filled: true,
                      fillColor: Color(0xffFFFFFF),
                      hintText: 'Mobile no.',
                      hintStyle: TextStyle(fontSize: 13),
                      contentPadding: EdgeInsets.only(top: 5, right: 16),
                      prefixIcon: Icon(
                        Icons.phone_rounded,
                        color: Color(0xffF79F10),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: EmailCtr,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffFFFFFF),
                      hintText: 'Email',
                      hintStyle: TextStyle(fontSize: 13),
                      contentPadding: EdgeInsets.only(top: 5, right: 16),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color(0xffF79F10),
                      ),
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: AddressCtr,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffFFFFFF),
                      hintText: 'Address',
                      hintStyle: TextStyle(fontSize: 13),
                      contentPadding: EdgeInsets.only(top: 5, right: 16),
                      prefixIcon: Icon(
                        Icons.location_on_outlined,
                        color: Color(0xffF79F10),
                      ),
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: DropdownButtonHideUnderline(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 13),
                    child: Align(
                      alignment: Alignment.center,
                      child: DropdownButton2(
                        isExpanded: true,
                        hint: Row(
                          children: [
                            Icon(
                              Icons.person_rounded,
                              color: Color(0xffF79F10),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: selectedValue1 == null
                                  ? Text(
                                      'Designation',
                                      style: TextStyle(
                                        fontSize: 13,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  : Text(
                                      '$selectedValue1',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black87,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                            ),
                          ],
                        ),
                        items: item
                            .map(
                              (item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      item,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontSize: 10, color: Colors.black45),
                                    ),
                                  )),
                            )
                            .toList(),
                        // value: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue1 = value as String?;
                          });
                          print(selectedValue1);
                        },
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xffF79F10),
                          size: 35,
                        ),
                        iconSize: 14,
                        iconEnabledColor: Colors.yellow,
                        iconDisabledColor: Colors.grey,
                        buttonHeight: 50,
                        buttonWidth: double.infinity,
                        buttonPadding:
                            const EdgeInsets.only(left: 10, right: 14),
                        buttonDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black38),
                          // color: Color(0xffF9D3B9),
                        ),
                        itemHeight: 30,
                        // itemPadding: const EdgeInsets.only(left: 80, right: 14),
                        dropdownMaxHeight: 180,
                        dropdownWidth: MediaQuery.of(context).size.width / 1.5,
                        dropdownPadding: EdgeInsets.symmetric(horizontal: 10),
                        dropdownDecoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        dropdownElevation: 8,
                        scrollbarRadius: const Radius.circular(40),
                        scrollbarThickness: 6,
                        // scrollbarAlwaysShow: true,
                        offset: const Offset(-20, 0),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: DateCtr,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffFFFFFF),
                      hintText: 'Date of joining',
                      hintStyle: TextStyle(fontSize: 13),
                      contentPadding: EdgeInsets.only(top: 5, right: 16),
                      prefixIcon: Icon(
                        Icons.calendar_month_outlined,
                        color: Color(0xffF79F10),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: DropdownButtonHideUnderline(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 13),
                    child: Align(
                      alignment: Alignment.center,
                      child: DropdownButton2(
                        isExpanded: true,
                        hint: Row(
                          children: [
                            Icon(
                              Icons.person_rounded,
                              color: Color(0xffF79F10),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: selectedValue2 == null
                                  ? Text(
                                      'gender',
                                      style: TextStyle(
                                        fontSize: 13,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  : Text(
                                      '$selectedValue2',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black87,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                            ),
                          ],
                        ),
                        items: items
                            .map(
                              (items) => DropdownMenuItem<String>(
                                  value: items,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      items,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontSize: 10, color: Colors.black45),
                                    ),
                                  )),
                            )
                            .toList(),
                        // value: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue2 = value as String?;
                          });
                          print(selectedValue2);
                        },
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xffF79F10),
                          size: 35,
                        ),
                        iconSize: 14,
                        iconEnabledColor: Colors.yellow,
                        iconDisabledColor: Colors.grey,
                        buttonHeight: 50,
                        buttonWidth: double.infinity,
                        buttonPadding:
                            const EdgeInsets.only(left: 10, right: 14),
                        buttonDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black38),
                          // color: Color(0xffF9D3B9),
                        ),
                        itemHeight: 30,
                        // itemPadding: const EdgeInsets.only(left: 80, right: 14),
                        dropdownMaxHeight: 180,
                        dropdownWidth: MediaQuery.of(context).size.width / 1.5,
                        dropdownPadding: EdgeInsets.symmetric(horizontal: 10),
                        dropdownDecoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        dropdownElevation: 8,
                        scrollbarRadius: const Radius.circular(40),
                        scrollbarThickness: 6,
                        // scrollbarAlwaysShow: true,
                        offset: const Offset(-20, 0),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 13, right: 13),
                      child: InkWell(
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Image(
                                  image: AssetImage('assets/UPload.png'),
                                  height: 27,
                                  width: 20,
                                ),
                              ),
                              Text(
                                'Upload Id proof ( Aadhar Card, Pan Card )',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.black45),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            // color: Color(0xffF9D3B9),
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.black38,
                            ),
                          ),
                          width: 310,
                          height: 70,
                        ),
                        onTap: () {
                          _openFileExplorer();
                        },
                      ),
                    )

                    // ElevatedButton(
                    //   onPressed: () => _selectFolder(),
                    //   child: const Text("Pick folder"),
                    // ),
                    // ElevatedButton(
                    //   onPressed: () => _clearCachedFiles(),
                    //   child: const Text("Clear temporary files"),
                    // ),
                  ],
                ),
              ),
              Builder(
                builder: (BuildContext context) => _loadingPath
                    ? Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                      )
                    : _directoryPath != null
                        ? ListTile(
                            title: const Text('Directory path'),
                            subtitle: Text(_directoryPath!),
                          )
                        : _paths != null
                            ? Container(
                                padding: const EdgeInsets.only(bottom: 30.0),
                                height:
                                    MediaQuery.of(context).size.height * 0.13,
                                child: Scrollbar(
                                    child: ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount:
                                      _paths != null && _paths!.isNotEmpty
                                          ? _paths!.length
                                          : 1,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    final bool isMultiPath =
                                        _paths != null && _paths!.isNotEmpty;
                                    final String name = 'File $index: ' +
                                        (isMultiPath
                                            ? _paths!
                                                .map((e) => e.name)
                                                .toList()[index]
                                            : _fileName ?? '...');
                                    final path = _paths!
                                        .map((e) => e.path)
                                        .toList()[index];

                                    return ListTile(
                                      title: Text(
                                        name,
                                      ),
                                      subtitle: Text(path!),
                                    );
                                  },
                                  separatorBuilder:
                                      (BuildContext context, int index) =>
                                          const Divider(),
                                )),
                              )
                            : const SizedBox(
                                height: 12,
                              ),
              ),
              GestureDetector(
                child: Container(
                    // margin: EdgeInsets.only(left: 20, right: 20),
                    height: 55,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                        color: Color(0xff8D5321),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        'Save',
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
                onTap: () {
                  print(FullNameCtr.text);
                  print(MobailCtr.text);
                  print(EmailCtr.text);
                  print(AddressCtr.text);
                  print(DateCtr.text);
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          //this right here
                          child: Container(
                            height: 280,
                            width: 400,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 12,
                                right: 12,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // width: 50,
                                    alignment: Alignment.topRight,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Icon(Icons.close),
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/dialogbox.png',
                                    height: 150,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      'Employee added successfully',
                                      style: TextStyle(color: Colors.black38),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                      width: 400.0,
                                      child: InkWell(
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 35, right: 35),
                                          child: Container(
                                            height: 45,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                color: Color(0xffF79F10)),
                                            child: Center(
                                              child: Text(
                                                "Add more employee",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                      ))
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ]));
  }
}
