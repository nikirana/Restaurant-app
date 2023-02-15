import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:foodei/main.dart";
import "package:foodei/utils/text_form_field.dart";

class LoginBottomSheet extends StatefulWidget {
  const LoginBottomSheet({super.key});

  @override
  State<LoginBottomSheet> createState() => _LoginBottomSheetState();
}

class _LoginBottomSheetState extends State<LoginBottomSheet> {
  @override
  void changeCount() {
    if (count == 1) {
      count = 0;
    } else {
      count = 1;
    }
    setState(() {});
  }

  int count = 0;
  var _emailController = TextEditingController();
  var _passwordController = TextEditingController();
  var _nameController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
  }

  Widget build(BuildContext context) {
    Size sz = MediaQuery.of(context).size;
    height = sz.height;
    width = sz.width;
    return SafeArea(
      child: Container(
        height: height * 0.7,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(height * .05),
                topRight: Radius.circular(height * .05))),
        child: Padding(
          padding: EdgeInsets.all(width * 0.04),
          child: ListView(children: [
            SizedBox(
              height: height * .01,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.08),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: changeCount,
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: count == 0 ? Colors.green : Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          textBaseline: TextBaseline.ideographic),
                    ),
                  ),
                  GestureDetector(
                    onTap: changeCount,
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                          color: count == 1 ? Colors.green : Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            count == 0
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email Address",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: height * 0.016),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormFieldWidget(_emailController, false, "Email"),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Password",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: height * 0.016),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormFieldWidget(
                          _passwordController, true, "Password"),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Forgot Password?",
                            style: TextStyle(color: Colors.green),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * .04),
                        child: Center(
                            child: Container(
                          height: height * 0.05,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius:
                                  BorderRadius.circular(height * 0.01)),
                          child: Center(
                              child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          )),
                        )),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                        child: Center(
                            child: Container(
                          height: height * 0.05,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 232, 230, 230),
                              borderRadius:
                                  BorderRadius.circular(height * 0.01)),
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(FontAwesomeIcons.google),
                              SizedBox(width: width * 0.02),
                              Text(
                                "Login with Google",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: height * 0.02),
                              ),
                            ],
                          )),
                        )),
                      ),
                    ],
                  )
                : 
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Full Name",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: height * 0.016),
                      ),
                      SizedBox(
                        height: height * 0.005,
                      ),
                      TextFormFieldWidget(_nameController, false, "Full Name"),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text(
                        "Email Address",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: height * 0.016),
                      ),
                      SizedBox(
                        height: height * 0.005,
                      ),
                      TextFormFieldWidget(_emailController, false, "Email"),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text(
                        "Password",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: height * 0.016),
                      ),
                      SizedBox(
                        height: height * 0.005,
                      ),
                      TextFormFieldWidget(
                          _passwordController, true, "Password"),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                        child: Center(
                            child: Container(
                          height: height * 0.05,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius:
                                  BorderRadius.circular(height * 0.01)),
                          child: Center(
                              child: Text(
                            "Register",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          )),
                        )),
                      ),
                      SizedBox(
                        height: width * 0.04,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                        child: Center(
                            child: Container(
                          height: height * 0.05,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 232, 230, 230),
                              borderRadius:
                                  BorderRadius.circular(height * 0.01)),
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(FontAwesomeIcons.google),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Text(
                                "Sign up with Google",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: height * 0.02),
                              ),
                            ],
                          )),
                        )),
                      ),
                    ],
                  )
          ]),
        ),
      ),
    );
  }
}
