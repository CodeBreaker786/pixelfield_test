import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppInitial()) {
    on<OnAppStarted>((event, emit) => _onAppStartedEventToState(event, emit));
    on<AuthenticationStarted>(
        (event, emit) => _authenticationStartedEventToState(event, emit));
  }

  _onAppStartedEventToState(OnAppStarted event, Emitter<AppState> emit) async {
    emit(AppInitial());
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await Future.delayed(Duration(seconds: 3));

    bool? isWelcomeScreenShown = prefs.getBool('isLogin');
    if (isWelcomeScreenShown != null) {
      emit(AuthenticationAuthenticated());
    } else {
      emit(AuthenticationUnauthenticated(''));
    }
  }

  _authenticationStartedEventToState(
      AuthenticationStarted event, Emitter<AppState> emit) async {
    emit(AuthenticationInProgress());
    try {
      await Future.delayed(Duration(seconds: 3));
      if (event.email == '' || event.password == '') {
        emit(AuthenticationUnauthenticated('Please enter email and password'));
        return;
      }
      emit(AuthenticationAuthenticated());
    } catch (e) {
      emit(AuthenticationUnauthenticated(
          'An error occurred while trying to authenticate'));
    }
  }
}
