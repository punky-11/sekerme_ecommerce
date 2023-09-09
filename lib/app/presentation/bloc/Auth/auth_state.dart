part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();
}

class AuthInitial extends AuthState {
  @override
  List<Object> get props => [];
}
class AuthLoadingState extends AuthState{
  @override
  List<Object> get props =>[];
}
class GoogleAuthLoadingState extends AuthState{
  @override
  List<Object> get props =>[];
}
class FaceboockAuthLoadingState extends AuthState{
  @override
  List<Object> get props =>[];
}
class TwitterAuthLoadingState extends AuthState{
  @override
  List<Object> get props =>[];
}
class AutheSuccessState extends AuthState{
  @override
  List<Object> get props =>[];
}
class AuthErrorState extends AuthState{
final String messange;
const AuthErrorState({required this.messange});
@override
  List<Object> get props=>[];
}
class UnAuthState extends AuthState{
  UnAuthState();
  @override
  List<Object> get props=>[];
}
