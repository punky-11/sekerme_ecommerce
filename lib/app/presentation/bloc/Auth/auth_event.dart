part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props =>[];
}
class EmailSingInAuthEvenst extends AuthEvent{
  final String email,password;
  const EmailSingInAuthEvenst({
    required this.email,
    required this.password,
});
  @override
  List<Object> get props =>[email,password];


}
class EmailSignUpAuthEvent extends AuthEvent{
  final String email, password;

  const EmailSignUpAuthEvent({
    required this.email,
    required this.password
  });

  @override
  List<Object> get  props => [email, password];
}
class AnonymousSingInAuthEvenst extends AuthEvent{
  const AnonymousSingInAuthEvenst();
}
class FaceboockSingInAuthEvenst extends AuthEvent{
  const FaceboockSingInAuthEvenst();
}
class GoocleSingInAuthEvenst extends AuthEvent{
  const GoocleSingInAuthEvenst();
}
class TwitterSingInAuthEvenst extends AuthEvent{
  const TwitterSingInAuthEvenst();
}
class SingOutAuthEvenst extends AuthEvent{
  const SingOutAuthEvenst();
}
