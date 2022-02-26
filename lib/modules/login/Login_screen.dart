import 'package:flutter/material.dart';
import 'package:udemy_flutter/shared/components/components.dart';

class loginScreen extends StatefulWidget {

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  var EmailController = TextEditingController();

  var PassController = TextEditingController();

  var formKey= GlobalKey<FormState>();

  bool isPassword= true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  defaultTextFormField(
                    Controller: EmailController,
                    label: 'Email',
                    prefix: Icons.email,
                    type: TextInputType.emailAddress,
                    validate: (value){
                      if(value!.isEmpty)
                      {
                        return'email must not be empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  defaultTextFormField(
                    Controller: PassController,
                    label: 'Password',
                    prefix: Icons.lock,
                    type: TextInputType.visiblePassword,
                    suffix: isPassword ? Icons.visibility : Icons.visibility_off,
                    isPassword: isPassword,
                    suffixPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    validate: (value){
                      if(value!.isEmpty)
                      {
                        return'password is to short';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultButton (
                    text: 'login',
                    function: ()
                    {
                      if(formKey.currentState!.validate()){
                          print(EmailController.text);
                          print(PassController.text);
                      }
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                    text: 'Register',
                    function: (){
                      print(EmailController.text);
                      print(PassController.text);
                    },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                      ),
                      TextButton(
                        onPressed: (){},
                        child: Text(
                        'Register Now',
                        ),
                      )
                    ],
                  ),
              ],
      ),
            ),
          ),
        ),
    ),
    );

  }
}
