import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'color.dart';
// import 'employee_details.dart';

class EditEmployee extends StatefulWidget {
  const EditEmployee({Key? key}) : super(key: key);

  @override
  State<EditEmployee> createState() => _EditEmployeeState();
}

class _EditEmployeeState extends State<EditEmployee> {
  String? _fileName;
  List<PlatformFile>? _paths;
  bool _loadingPath = false;
  String? _extension;
  String? _directoryPath;

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

  String dropdownvalue = 'Worker';
  String dropdownvalue1 = 'Male';

  // List of items in our dropdown menu
  var items = [
    'Worker',
    'Professional',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  var items1 = [
    'Male',
    'Female',
    'Other',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.lightWhite2,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 26,
            ),
          ),
        ),
        title: Center(child: Text("Edit Employee")),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.06,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 10.0,
                              )
                            ],
                            color: colors.whiteTemp,
                            borderRadius: BorderRadius.circular(50)),
                        child: TextField(
                          // textAlign: TextAlign.start,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 12),
                            hintText: 'Johan Deo',
                            hintStyle: TextStyle(
                                color: colors.textColor1.withOpacity(0.5)),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Image.asset("assets/images/name.png"),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.06,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.06,
                        decoration: BoxDecoration(
                            color: colors.whiteTemp,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 10.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(50)),
                        child: TextField(
                          maxLength: 10,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 12.0),
                            counterText: "",
                            hintStyle: TextStyle(
                              color: colors.textColor1.withOpacity(0.5),
                            ),
                            hintText: '222 5648 231',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset(
                                "assets/images/call.png",
                                height: 10,
                                width: 5,
                              ),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.06,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.06,
                        decoration: BoxDecoration(
                            color: colors.whiteTemp,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 10.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(50)),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                                color: colors.textColor1.withOpacity(0.5)),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10.0),
                            hintText: 'Johandeo@gmail,.com',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset(
                                "assets/images/email.png",
                                height: 8,
                                width: 8,
                              ),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.06,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.90,
                        height: MediaQuery.of(context).size.height * 0.065,
                        decoration: BoxDecoration(
                            color: colors.whiteTemp,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 10.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(50)),
                        child: TextField(
                          keyboardType: TextInputType.name,
                          textAlignVertical: TextAlignVertical.center,
                          obscureText: true,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10.0),
                            hintText: '57, Wilson road Indore (M.P)',
                            hintStyle: TextStyle(
                                color: colors.textColor1.withOpacity(0.5)),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(14.0),
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset(
                                "assets/images/locations.png",
                                height: 8,
                                width: 8,
                              ),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.06,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.06,
                        decoration: BoxDecoration(
                            color: colors.whiteTemp,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 10.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              icon: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Image.asset(
                                  "assets/images/drow.png",
                                  height: 12,
                                  width: 12,
                                ),
                              ),
                              iconSize: 30,
                              isExpanded: false,
                              value: dropdownvalue,
                              hint: Text(
                                "Worker",
                                style: TextStyle(
                                    color: colors.textColor1.withOpacity(0.5)),
                              ),
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.06,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.90,
                        height: MediaQuery.of(context).size.height * 0.065,
                        decoration: BoxDecoration(
                            color: colors.whiteTemp,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 10.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(50)),
                        child: TextField(
                          keyboardType: TextInputType.name,
                          textAlignVertical: TextAlignVertical.center,
                          obscureText: true,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10.0),
                            hintText: '26, jan 2022',
                            hintStyle: TextStyle(
                                color: colors.textColor1.withOpacity(0.5)),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Image.asset("assets/images/date.png"),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.06,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.06,
                        decoration: BoxDecoration(
                            color: colors.whiteTemp,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 10.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              icon: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Image.asset(
                                  "assets/images/drow.png",
                                  height: 12,
                                  width: 12,
                                ),
                              ),
                              iconSize: 30,
                              isExpanded: false,
                              value: dropdownvalue1,
                              hint: Text(
                                "Male",
                                style: TextStyle(
                                    color: colors.textColor1.withOpacity(0.5)),
                              ),
                              items: items1.map((String items1) {
                                return DropdownMenuItem(
                                  value: items1,
                                  child: Text(items1),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue1 = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.08,
                        decoration: BoxDecoration(
                          color: colors.whiteTemp,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 10.0,
                            )
                          ],
                        ),
                        child: InkWell(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Image(
                                  image: AssetImage('assets/images/UPload.png'),
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
                          onTap: () {
                            _openFileExplorer();
                          },
                        ),
                      )
                    ],
                  ),
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
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.06,
              ),
              InkWell(
                // onTap: () {
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => EmployeeDetails()));
                // },
                child: Container(
                  margin: EdgeInsets.only(
                    bottom: 40.0,
                  ),
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/edit.png'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Save",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
