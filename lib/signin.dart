import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isObscure = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(_isObscure);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("SignIn System"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/login.png'),
              height: 200,
              width: 200,
            ),
            Container(child: Text("SIGN IN System")),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)
                  ),
                  labelText: 'Username',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0)
                  ),
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                        print(_isObscure);
                      });
                    },
                    icon: Icon(
                      _isObscure == false
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              width: double.maxFinite,
              padding: EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
