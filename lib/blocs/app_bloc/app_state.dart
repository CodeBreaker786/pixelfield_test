part of 'app_bloc.dart';

@immutable
sealed class AppState {}

final class AppInitial extends AppState {}

final class AuthenticationAuthenticated extends AppState {
  AuthenticationAuthenticated();
}

final class AuthenticationUnauthenticated extends AppState {
  final String message;

  AuthenticationUnauthenticated(this.message);
}

final class AuthenticationInProgress extends AppState {
  AuthenticationInProgress();
}

final class AuthenticationLoggedOut extends AppState {
  AuthenticationLoggedOut();
}
