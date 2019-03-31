import 'package:etoken_mobile/ui/signUpScreen.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height / 2;

    var theme = Theme.of(context).textTheme;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: screenHeight,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.purple.shade200,
                      Colors.purple.shade400,
                      Colors.purple.shade600
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[

                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "E-Token",
                      style: theme.display2.copyWith(color: Colors.white),
                    ),
                  ],
                ),
            
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32),
                    boxShadow: [
          BoxShadow(
            color: Colors.black,
          
          )
        ],
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text("Email", style: theme.subhead),
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey.shade200)),
                                padding: const EdgeInsets.all(10),
                                child: TextFormField(
                                  decoration:
                                      InputDecoration.collapsed(hintText: ''),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text("Password", style: theme.subhead),
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey.shade200)),
                                padding: const EdgeInsets.all(10),
                                child: TextFormField(
                                  decoration: InputDecoration.collapsed(
                                    hintText: '',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[Text("Forgot Password?")],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: double.infinity,
                          child: FlatButton(
                            onPressed: () {

                          

                            },
                            textColor: Colors.white,
                            color: Colors.purple,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)),
                            child: Text("LOGIN"),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[GestureDetector(
                            onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context)=> SignUpScreen()
                              ));
                            },
                            child: Text("Don't have an account?"))],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
