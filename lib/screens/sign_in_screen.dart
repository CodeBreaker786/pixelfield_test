import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixelfield_test/blocs/app_bloc/app_bloc.dart';
import 'package:pixelfield_test/widgets/input_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 84), // Space for status bar
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 32,
              ),
            ),

            SizedBox(height: 48),
            Text(
              "Sign in",
              style: GoogleFonts.playfairDisplay(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 32),
            InputField(
              label: "Email",
              isPassword: false,
              controller: _emailController,
            ),
            SizedBox(height: 36),
            InputField(
              label: "Password",
              isPassword: true,
              controller: _passwordController,
            ),
            SizedBox(height: 64),
            BlocListener<AppBloc, AppState>(
              listener: (context, state) {
                if (state is AuthenticationUnauthenticated) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.message),
                      backgroundColor: Theme.of(context).colorScheme.error,
                    ),
                  );
                }
                if (state is AuthenticationAuthenticated) {
                  Navigator.pop(context);
                }
              },
              child: BlocBuilder<AppBloc, AppState>(
                builder: (context, state) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: state is AuthenticationInProgress
                        ? () {}
                        : () {
                            context.read<AppBloc>().add(AuthenticationStarted(
                                  email: _emailController.text,
                                  password: _passwordController.text,
                                ));
                          },
                    child: Center(
                      child: state is AuthenticationInProgress
                          ? CircularProgressIndicator()
                          : Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                "Continue",
                              ),
                            ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 36),
            Center(
              child: Text.rich(
                TextSpan(
                  text: "Can't sign in?        ",
                  children: [
                    TextSpan(
                      text: "Recover password",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
