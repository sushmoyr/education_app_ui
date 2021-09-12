import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Image.asset("assets/images/logo_with_text.png"),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            print("Forgot password button clicked");
                          },
                          child: CheckBoxWithTitle(),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.only(
                                  left: 36, right: 36, top: 16, bottom: 16)),
                          child: Text(
                            "Sign Up",
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "or",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.only(top: 16, bottom: 16),
                        ),
                        onPressed: () {
                          print("Login with Google button clicked!!");
                        },
                        child: Text(
                          "Login with Google",
                          style: GoogleFonts.lato(
                              fontSize: 16, color: Colors.grey),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Have account? Get started",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Login",
                          style: GoogleFonts.lato(fontSize: 14),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class CheckBoxWithTitle extends StatefulWidget {
  const CheckBoxWithTitle({
    Key? key,
  }) : super(key: key);

  @override
  _CheckBoxWithTitleState createState() => _CheckBoxWithTitleState();
}

class _CheckBoxWithTitleState extends State<CheckBoxWithTitle> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          value: value,
          onChanged: (v) {
            setState(() {
              value = !value;
            });
            print(value);
          },
        ),
        Text(
          "Agree to Terms and Policies",
          style: GoogleFonts.lato(fontSize: 12),
        ),
      ],
    );
  }
}
