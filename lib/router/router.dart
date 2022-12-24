
// @CupertinoAutoRouter              
// @AdaptiveAutoRouter              
// @CustomAutoRouter              
import 'package:auto_route/auto_route.dart';
import 'package:auto_route_exemplo/router/guard/checar-usuario-logado.dart';
import 'package:auto_route_exemplo/telas/comprar-item.dart';
import 'package:auto_route_exemplo/telas/detalhe-item.dart';
import 'package:auto_route_exemplo/telas/listagem-itens.dart';
import 'package:auto_route_exemplo/telas/tela-inicial.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: TelaInicial, initial: true,),
    CustomRoute(
      page: ListagemItens,
      path: "/listagem",
      maintainState: true,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    AutoRoute(page: DetalheItem,path: "/detalhe-item/:id"),
    AutoRoute(
      page: ComprarItem,
      path: "/comprar-item",
      guards: [ChecarUsuarioLogado]
    ),
    RedirectRoute(path: "/teste", redirectTo: "/"),
    RedirectRoute(path: "/usuarios/*", redirectTo: "/usuarios"),
    RedirectRoute(path: "*", redirectTo: "/")
  ],
)
class $AppRouter {}         