import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:freelance_project/utils/size_config.dart';
import 'package:freelance_project/widgets/Custom_button.dart';
import 'package:freelance_project/widgets/Custom_input_field.dart';
import 'package:freelance_project/widgets/image_upload_widget.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Profile",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Column(
        children: [
          ImageUploadWidget(),
          Text(
            "Change Profile Photo",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: SizeConfig(context).getProportionateScreenWidth(190),
                child: CustomInputField(
                  typeof: true,
                  suffix: false,
                  prefix: false,
                  labelText: "First Name",
                  // controller: emailcontroller,
                  // initalval: user.email ?? "member@study.com",
                  textInput: TextInputType.emailAddress,
                ),
              ),
              Container(
              width: SizeConfig(context).getProportionateScreenWidth(185),
                child: CustomInputField(
                  typeof: true,
                  suffix: false,
                  prefix: false,
                  labelText: "Last Name",
                  // controller: emailcontroller,
                  // initalval: user.email ?? "member@study.com",
                  textInput: TextInputType.emailAddress,
                ),
              ),
            ],
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
            height: SizeConfig(context).getProportionateScreenHeight(150),
            typeof: true,
            suffix: false,
            prefix: false,
            labelText: "Bio",
            // controller: emailcontroller,
            // initalval: user.email ?? "member@study.com",
            textInput: TextInputType.emailAddress,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:10.0),
            child: Row(
              children: [
                Text(
                  "Location",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Lucknow",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.edit,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          CustomButton(
            inpttxt: "SAVE",
            inptheight: 50,
            inptwidth: SizeConfig(context).getProportionateScreenWidth(280),
            color: Colors.orange,
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
