import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:serviceapp/homesceen%20(1).dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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

  final List<String> items = [
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
  String? selectedValue3;
  final _formKey = GlobalKey<FormState>();
  TextEditingController FullNameCtr = TextEditingController();
  TextEditingController MobailCtr = TextEditingController();
  TextEditingController EmailCtr = TextEditingController();
  TextEditingController AddressCtr = TextEditingController();
  TextEditingController PasswordCtr = TextEditingController();
  TextEditingController ConfirmPasswordCtr = TextEditingController();

  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE9F0FF),
        appBar: AppBar(
            title: Text(
              'Sign up',
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
        body: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            shrinkWrap: true,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(blurRadius: 1, color: Colors.grey)],
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 18, right: 18, top: 2),
                      child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'required Name*.';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.text,
                          controller: FullNameCtr,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            contentPadding: EdgeInsets.all(18),
                            hintText: 'Full Name.*',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: const Icon(
                                Icons.person,
                                color: Color(0xffF79F10),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black38,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 18, right: 18, top: 2),
                      child: TextFormField(
                          maxLength: 10,
                          // validator: (value) {
                          //   if (value!.isEmpty) {
                          //     return 'required Mobile no .';
                          //   }
                          //   return null;
                          // },
                          keyboardType: TextInputType.number,
                          controller: MobailCtr,
                          decoration: InputDecoration(
                            counterText: "",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            contentPadding: EdgeInsets.all(18),
                            hintText: 'Mobile No.*',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: const Icon(
                                Icons.call,
                                color: Color(0xffF79F10),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black38,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 18, right: 18, top: 2),
                      child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'required Email no.';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                          controller: EmailCtr,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            contentPadding: EdgeInsets.all(18),
                            hintText: 'Email.*',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: const Icon(
                                Icons.email,
                                color: Color(0xffF79F10),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black38,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 18, right: 18, top: 2),
                      child: TextFormField(
                          // validator: (value) {
                          //   if (value!.isEmpty) {
                          //     return 'required Address.';
                          //   }
                          //   return null;
                          // },
                          keyboardType: TextInputType.streetAddress,
                          controller: AddressCtr,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            contentPadding: EdgeInsets.all(18),
                            hintText: 'Address*',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: const Icon(
                                Icons.location_on,
                                color: Color(0xffF79F10),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black38,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 22, top: 10),
                      child: Row(
                        children: [
                          Text(
                            'Use My Current Location',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.my_location_sharp,
                            size: 14,
                          )
                        ],
                      ),
                    ),
                    Center(
                      child: DropdownButtonHideUnderline(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 13),
                          child: Align(
                            alignment: Alignment.center,
                            child: DropdownButton2(
                              isExpanded: true,
                              hint: Row(
                                children: [
                                  Image.asset(
                                    'assets/pngcompany.png',
                                    height: 22,
                                    width: 22,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: selectedValue1 == null
                                        ? Text(
                                            'Select Company',
                                            style: TextStyle(
                                              fontSize: 10,
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
                              items: items
                                  .map(
                                    (item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Text(
                                            item,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                                fontSize: 10,
                                                color: Colors.black45),
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
                              dropdownWidth:
                                  MediaQuery.of(context).size.width / 1.5,
                              dropdownPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
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
                      height: 10,
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
                                      padding:
                                          const EdgeInsets.only(bottom: 30.0),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.13,
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
                                              _paths != null &&
                                                  _paths!.isNotEmpty;
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
                    Padding(
                        padding: EdgeInsets.only(
                          left: 15,
                          right: 15,
                        ),
                        child: Container(
                          child: TextFormField(
                            // validator: (value) {
                            //   if (value!.isEmpty) {
                            //     return 'Please enter name';
                            //   }
                            //   return null;
                            // },
                            controller: PasswordCtr,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              // contentPadding: EdgeInsets.only(top: 5),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Color(0xffF79F10),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black38,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black38,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                          left: 15,
                          right: 15,
                        ),
                        child: Container(
                          child: TextFormField(
                            // validator: (value) {
                            //   if (value!.isEmpty) {
                            //     return 'Confirm PAssword';
                            //   }
                            //   return null;
                            // },
                            controller: ConfirmPasswordCtr,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Confirm Password',
                              // contentPadding: EdgeInsets.only(top: 5),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Color(0xffF79F10),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black38,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black38,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? Signup",
                      style: TextStyle(fontSize: 10),
                    ),
                    Text(
                      'Signup',
                      style: TextStyle(color: Color(0xffF79F10), fontSize: 5),
                    )
                  ],
                ),
              ),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 60,
                  width: 380,
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
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    print("Process data");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  } else {
                    print('Error');
                  }
                },
              )
            ],
          ),
        ));
  }
}
