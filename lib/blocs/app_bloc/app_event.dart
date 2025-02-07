part of 'app_bloc.dart';

@immutable
sealed class AppEvent {}

 

 class OnAppStarted extends AppEvent {}

 

class AuthenticationStarted extends AppEvent {
  final String email;
  final String password;

  AuthenticationStarted({required this.email, required this.password});
}