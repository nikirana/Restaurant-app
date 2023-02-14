import "package:flutter/material.dart";

class LoginBottomSheet extends StatefulWidget {
  const LoginBottomSheet({super.key});

  @override
  State<LoginBottomSheet> createState() => _LoginBottomSheetState();
}

class _LoginBottomSheetState extends State<LoginBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(232, 141, 243, 182)))
                   ,enabledBorder:   OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(232, 141, 243, 182)))
                        
                ),
            ),
          ],
        ),
      ),
    );
  }
}
