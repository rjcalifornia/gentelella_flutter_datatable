import 'package:flutter/material.dart';

class AddNewUserForm extends StatefulWidget {
  AddNewUserForm({Key key}) : super(key: key);

  @override
  _AddNewUserFormState createState() => _AddNewUserFormState();
}

class _AddNewUserFormState extends State<AddNewUserForm> {
  
  int currStep = 0;

  
  @override
  Widget build(BuildContext context) {
    return Container(
       // height: MediaQuery.of(context).size.height,
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           SizedBox(height: 8.0,),
           Text('Enter user details', style: TextStyle(color: Color(0xff73879C), fontWeight: FontWeight.w500, fontSize: 26.0,),),
           SizedBox(height: 32.0,),
           Container(
           //  height: MediaQuery.of(context).size.height,
             width: double.infinity,
             padding:  EdgeInsets.symmetric(vertical: 35.0, horizontal: 35.0),
             color: Color(0xffffffff),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 Text('Add user form',
                 style: TextStyle(color: Color(0xff73879C), fontSize: 18.0, fontWeight: FontWeight.w100),
                 ),
                 Divider(),
                 Text('Use this page to add a new user to the database',
                 style: TextStyle(color: Color(0xff73879C), fontSize: 12.0, fontWeight: FontWeight.w100),
                 ),
                 SizedBox(height: 28.0,),
                 new Stepper(
              type: StepperType.vertical,
              currentStep: this.currStep,
              onStepContinue: () {
                setState(() {
                  if (currStep < 4 - 1) {
                    currStep = currStep + 1;
                  } else {
                    currStep = 0;
                  }
                });
              },
              onStepCancel: () {
                setState(() {
                  if (currStep > 0) {
                    currStep = currStep - 1;
                  } else {
                    currStep = 0;
                  }
                });
              },
              onStepTapped: (step) {
                setState(() {
                  currStep = step;
                });
              },
              steps: [
                Step(
                  title: const Text('Name:'),
                  isActive: true,
                  state: StepState.indexed,
                  content: new TextFormField(
                    keyboardType: TextInputType.text,
                    autocorrect: true,
                    decoration: new InputDecoration(
                      labelText: 'Enter the full name',
                      hintText: 'Example: John Doe',
                      icon: const Icon(Icons.person_outline),
                      labelStyle: new TextStyle(
                          decorationStyle: TextDecorationStyle.solid),
                    ),
                  ),
                ),

                Step(
                  title: const Text('Username:'),
                  isActive: true,
                  state: StepState.indexed,
                  content: new TextFormField(
                    keyboardType: TextInputType.text,
                    autocorrect: true,
                    decoration: new InputDecoration(
                      labelText: 'Enter a valid username',
                      hintText: 'Example: john.doe',
                      icon: const Icon(Icons.verified_user),
                      labelStyle: new TextStyle(
                          decorationStyle: TextDecorationStyle.solid),
                    ),
                  ),
                ),

                Step(
                  title: const Text('Email:'),
                  isActive: true,
                  state: StepState.indexed,
                  content: new TextFormField(
                    keyboardType: TextInputType.text,
                    autocorrect: true,
                    decoration: new InputDecoration(
                      labelText: 'Enter a valid email',
                      hintText: 'Example: jdoe@example.com',
                      icon: const Icon(Icons.person_outline),
                      labelStyle: new TextStyle(
                          decorationStyle: TextDecorationStyle.solid),
                    ),
                  ),
                ),



                Step(
                  title: const Text('Phone number:'),
                  isActive: true,
                  state: StepState.indexed,
                  content: new TextFormField(
                    keyboardType: TextInputType.text,
                    autocorrect: true,
                    decoration: new InputDecoration(
                      labelText: 'Please enter a phone number',
                      hintText: 'Example: 501-308-8888',
                      icon: const Icon(Icons.phone_android),
                      labelStyle: new TextStyle(
                          decorationStyle: TextDecorationStyle.solid),
                    ),
                  ),
                ),
              ],
            ),
      
               ],
             ),
           ),
          
          ],
       )
    );
  }
}