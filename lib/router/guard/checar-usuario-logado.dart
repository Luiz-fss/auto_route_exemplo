
import 'package:auto_route/auto_route.dart';

class ChecarUsuarioLogado extends AutoRouteGuard{
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {

    if(_validarUsuarioLogado()){
      resolver.next(true);
    }else{
      //resolver.next(false);
      router.pushNamed("/");
    }
  }
}

bool _validarUsuarioLogado(){
  return true;
}