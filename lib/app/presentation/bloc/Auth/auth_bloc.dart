import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../utils/services/auth_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _authService = AuthService();
  AuthBloc() : super(AuthInitial()) {
   on<EmailSingInAuthEvenst>((event,emit)async{
     emit(AuthLoadingState());
     try{
       await _authService.SingInWithEmail(email: event.email, password: event.password);
       emit(AutheSuccessState());
     }catch(err) {
       emit(AuthErrorState(messange: err.toString())
       );}
     });
   on<EmailSignUpAuthEvent>((event,emit)async{
     emit(AuthLoadingState());
     try{
       await _authService.singUpWithEmail(email: event.email, password: event.password);
       emit(AutheSuccessState());
     }catch(err){
       emit(AuthErrorState(messange: err.toString()));
     }
  });
   on<AnonymousSingInAuthEvenst>((event,emit)async{
    emit(AuthLoadingState());
    try{
      await _authService.anonymousSignIn();
      emit(AutheSuccessState());
    }catch(err){
      emit(AuthErrorState(messange: err.toString()));
    }
  });

   on<FaceboockSingInAuthEvenst>((event,emit)async{
     emit(AuthLoadingState());
     try{
       await _authService.facebookSignIn();
       emit(AutheSuccessState());
     }catch(err){
       emit(AuthErrorState(messange: err.toString()));
     }
   });

   on<TwitterSingInAuthEvenst>((event,emit)async{
     emit(AuthLoadingState());
     try{
       await _authService.twitterSignIn();
       emit(AutheSuccessState());
     }catch(err){
       emit(AuthErrorState(messange: err.toString()));
     }
   });

   on<GoocleSingInAuthEvenst>((event,emit)async{
     emit(AuthLoadingState());
     try{
       await _authService.googleSignIn();
       emit(AutheSuccessState());
     }catch(err){
       emit(AuthErrorState(messange: err.toString()));
     }
   });
  }
}
