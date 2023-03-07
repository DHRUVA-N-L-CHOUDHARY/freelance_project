import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:freelance_project/widgets/Custom_input_field.dart';

class EditDetailsScreen extends StatelessWidget {
  const EditDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.close, color: Colors.black,),
        title: Text(
          "Edit details",
          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.orange,
                  ),
                  // width:60,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 8.0),
                    child: Center(
                      child: Text(
                        "SAVE",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  )),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:20.0),
              child: Text("Looking for Workers"),
            ),
            CustomInputField(
              typeof: true,
              suffix: false,
              prefix: false,
              labelText: "Stage",
              // controller: emailcontroller,
              // initalval: user.email ?? "member@study.com",
              textInput: TextInputType.emailAddress,
            ),
            Padding(
              padding: const EdgeInsets.only(left:20.0),
              child: Text("About"),
            ),
       CustomInputField(
              typeof: true,
              suffix: false,
              prefix: false,
              labelText: "Stage",
              // controller: emailcontroller,
              // initalval: user.email ?? "member@study.com",
              textInput: TextInputType.emailAddress,
            ),
            Padding(
              padding: const EdgeInsets.only(left:20.0),
              child: Text("Company"),
            ),
       CustomInputField(
              typeof: true,
              suffix: false,
              prefix: false,
              labelText: "Stage",
              // controller: emailcontroller,
              // initalval: user.email ?? "member@study.com",
              textInput: TextInputType.emailAddress,
            ),
            Padding(
              padding: const EdgeInsets.only(left:20.0),
              child: Text("Languages"),
            ),
       CustomInputField(
              typeof: true,
              suffix: false,
              prefix: false,
              labelText: "Stage",
              // controller: emailcontroller,
              // initalval: user.email ?? "member@study.com",
              textInput: TextInputType.emailAddress,
            ),
            Padding(
              padding: const EdgeInsets.only(left:20.0),
              child: Text("Detail Address"),
            ),
       CustomInputField(
              typeof: true,
              suffix: false,
              prefix: false,
              labelText: "Stage",
              // controller: emailcontroller,
              // initalval: user.email ?? "member@study.com",
              textInput: TextInputType.emailAddress,
            ),
            Padding(
              padding: const EdgeInsets.only(left:20.0),
              child: Text("Pincode"),
            ),
       CustomInputField(
              typeof: true,
              suffix: false,
              prefix: false,
              labelText: "Stage",
              // controller: emailcontroller,
              // initalval: user.email ?? "member@study.com",
              textInput: TextInputType.emailAddress,
            ),
            Padding(
              padding: const EdgeInsets.only(left:20.0),
              child: Text("Email ID"),
            ),
       CustomInputField(
              typeof: true,
              suffix: false,
              prefix: false,
              labelText: "Stage",
              // controller: emailcontroller,
              // initalval: user.email ?? "member@study.com",
              textInput: TextInputType.emailAddress,
            ),
            Padding(
              padding: const EdgeInsets.only(left:20.0),
              child: Text("Social Media"),
            ),
       CustomInputField(
              typeof: true,
              suffix: false,
              prefix: false,
              labelText: "Stage",
              // controller: emailcontroller,
              // initalval: user.email ?? "member@study.com",
              textInput: TextInputType.emailAddress,
            ),
            CustomInputField(
              typeof: true,
              suffix: false,
              prefix: false,
              labelText: "Stage",
              // controller: emailcontroller,
              // initalval: user.email ?? "member@study.com",
              textInput: TextInputType.emailAddress,
            ),
            CustomInputField(
              typeof: true,
              suffix: false,
              prefix: false,
              labelText: "Stage",
              // controller: emailcontroller,
              // initalval: user.email ?? "member@study.com",
              textInput: TextInputType.emailAddress,
            ),
          ],
        ),
      ),
    );
  }
}
