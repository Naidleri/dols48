import 'package:dols48/views/fragment/inputForm.dart';
import 'package:dols48_mobile/feature/auth/login/bloc/auth_bloc.dart';
import 'package:dols48_mobile/feature/auth/login/bloc/login_bloc.dart';
import 'package:dols48_mobile/fragment/button.dart';
import 'package:dols48_mobile/fragment/inputForm.dart';
import 'package:dols48_mobile/presentation/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginForm extends StatelessWidget {
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double fontSize = screenWidth * 0.04;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel("Email", screenWidth),
        inputForm(
          controller: _emailcontroller,
          name: "email",
          hintText: "youremail@email.com",
          screenWidth: screenWidth,
          fontSize: fontSize,
        ),
        const SizedBox(height: 10),
        _buildLabel("Password", screenWidth),
        inputForm(
            controller: _passwordcontroller,
            name: "password",
            hintText: 'yourpassword',
            screenWidth: screenWidth,
            fontSize: fontSize,
            obscureText: true),
        const SizedBox(
          height: 10,
        ),
        BlocConsumer<LoginBloc, LoginState>(listener: (context, state) {
          if (state is LoginFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorMessage),
              ),
            );
          }
          // if (state is Authenticated) {
          //   Navigator.of(context).push(PageTransition(
          //       child: const Homepage(), type: PageTransitionType.fade));
          // }
        }, builder: (context, state) {
          if (state is LoginLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return PublicButton(
            label: "Login",
            onPressed: () {
              context.read<LoginBloc>().add(LoginPressed(
                  email: _emailcontroller.text,
                  password: _passwordcontroller.text));
            },
          );
        })
      ],
    );
  }
}

Widget _buildLabel(String text, double screenWidth) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      color: Colors.grey,
      fontSize: screenWidth * 0.03,
    ),
  );
}
