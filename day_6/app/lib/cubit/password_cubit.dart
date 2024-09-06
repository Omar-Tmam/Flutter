import 'package:day_6/cubit/password_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class PasswordCubit extends Cubit<PasswordState> {
  PasswordCubit() : super(PasswordState());

  bool obscureText = true;
  void changeObscure() {
    obscureText = !obscureText;
    emit(PasswordState());
  }
}
