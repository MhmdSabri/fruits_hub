import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_field.dart';
import 'package:fruits_hub/core/widgets/password_field.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/dont_have_account_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  late String email, passsword;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizintalPadding),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autoValidateMode,
          child: Column(
            children: [
              SizedBox(height: 24),
              CustomTextFormField(
                  onSaved: (value) {
                    email = value!;
                  },
                  hintText: 'البريد الالكترونى',
                  textInputType: TextInputType.emailAddress),
              SizedBox(height: 16),
              PassworsField(
                onSaved: (value) {
                  passsword = value!;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'نسيت كلمة المرور؟',
                    style: TextStyles.semiBold13.copyWith(
                      color: AppColors.lightPrimaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 33,
              ),
              CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.read<SigninCubit>().signin(
                          email,
                          passsword,
                        );
                  } else {
                    setState(() {
                      autoValidateMode = AutovalidateMode.always;
                    });
                  }
                },
                text: 'تسجيل دخول',
              ),
              const SizedBox(
                height: 16,
              ),
              DontHaveAccountWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
