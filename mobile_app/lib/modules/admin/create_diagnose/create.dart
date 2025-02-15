import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobile_app/shared/bloc/admin_cubit/cubit.dart';
import 'package:mobile_app/shared/bloc/admin_cubit/states.dart';
import 'package:mobile_app/shared/components/components.dart';
import 'package:mobile_app/shared/styles/constant.dart';

class CreateDiagnoses extends StatefulWidget {
  const CreateDiagnoses({Key? key}) : super(key: key);

  @override
  State<CreateDiagnoses> createState() => _CreateState();
}

class _CreateState extends State<CreateDiagnoses> {
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppAdminCubit, CreateAdminStates>(
      listener: (context, state) {
        var cubit = AppAdminCubit.get(context);
        if (state is AppCreateDiagnosesSuccessStates) {
          Fluttertoast.showToast(
            msg: "Diagnosesis created",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        } else if (state is AppCreateDiagnosesErrorStates) {
          Fluttertoast.showToast(
            msg: "Couldn't create Diagnoses",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        }
      },
      builder: (context, state) {
        var cubit = AppAdminCubit.get(context);
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60.0),
            child: AppBar(
              elevation: 0.0,
              flexibleSpace: Center(),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(15),
                ),
              ),
              leading: buildPopMenuButton(context),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(25.0),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      defulttext(
                        textName: 'Create Diagnoses',
                        fontWeight: FontWeight.bold,
                        size: 22,
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      Row(
                        children: [
                          defulttext(
                            textName: 'Diagnoses name',
                            fontWeight: FontWeight.bold,
                            size: 16,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 70,
                        child: textFormField(
                            keyboardType: TextInputType.name,
                            controller: nameController,
                            hint: 'Diagnoses name',
                            radius: 20,
                            hintStyle: const TextStyle(
                              fontSize: 13,
                            ),
                            onChange: (value) {
                              value = null;
                            },
                            validate: (value) {
                              if (value.isEmpty) {
                                return 'field must not be empty';
                              } else {
                                return null;
                              }
                            }),
                      ),
                      Center(
                        child: ConditionalBuilder(
                          condition: state is! AppCreateDiagnosesLoadingStates,
                          builder: (context) => defultButton(
                              changeColor: btnsColor,
                              fontWeight: FontWeight.bold,
                              radius: 13,
                              height: 40,
                              width: 130,
                              changeText: 'add +',
                              onPressed: () {
                                FocusScope.of(context).unfocus();
                                if (formKey.currentState!.validate()) {
                                  cubit.createDiagnoses(
                                    name: nameController.text,
                                  );
                                }
                              }),
                          fallback: (context) => Center(
                              child:
                                  CircularProgressIndicator(color: pinkColor)),
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        );
      },
    );
  }
}
