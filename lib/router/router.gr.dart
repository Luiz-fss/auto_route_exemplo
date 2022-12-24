// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../telas/comprar-item.dart' as _i4;
import '../telas/detalhe-item.dart' as _i3;
import '../telas/listagem-itens.dart' as _i2;
import '../telas/tela-inicial.dart' as _i1;
import 'guard/checar-usuario-logado.dart' as _i7;

class AppRouter extends _i5.RootStackRouter {
  AppRouter(
      {_i6.GlobalKey<_i6.NavigatorState>? navigatorKey,
      required this.checarUsuarioLogado})
      : super(navigatorKey);

  final _i7.ChecarUsuarioLogado checarUsuarioLogado;

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    TelaInicial.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.TelaInicial());
    },
    ListagemItens.name: (routeData) {
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.ListagemItens(),
          transitionsBuilder: _i5.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    DetalheItem.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<DetalheItemArgs>(
          orElse: () => DetalheItemArgs(id: pathParams.getInt('id')));
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.DetalheItem(key: args.key, id: args.id));
    },
    ComprarItem.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ComprarItem());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(TelaInicial.name, path: '/'),
        _i5.RouteConfig(ListagemItens.name, path: '/listagem'),
        _i5.RouteConfig(DetalheItem.name, path: '/detalhe-item/:id'),
        _i5.RouteConfig(ComprarItem.name,
            path: '/comprar-item', guards: [checarUsuarioLogado]),
        _i5.RouteConfig('/teste#redirect',
            path: '/teste', redirectTo: '/', fullMatch: true),
        _i5.RouteConfig('/usuarios/*#redirect',
            path: '/usuarios/*', redirectTo: '/usuarios', fullMatch: true),
        _i5.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.TelaInicial]
class TelaInicial extends _i5.PageRouteInfo<void> {
  const TelaInicial() : super(TelaInicial.name, path: '/');

  static const String name = 'TelaInicial';
}

/// generated route for
/// [_i2.ListagemItens]
class ListagemItens extends _i5.PageRouteInfo<void> {
  const ListagemItens() : super(ListagemItens.name, path: '/listagem');

  static const String name = 'ListagemItens';
}

/// generated route for
/// [_i3.DetalheItem]
class DetalheItem extends _i5.PageRouteInfo<DetalheItemArgs> {
  DetalheItem({_i6.Key? key, required int id})
      : super(DetalheItem.name,
            path: '/detalhe-item/:id',
            args: DetalheItemArgs(key: key, id: id),
            rawPathParams: {'id': id});

  static const String name = 'DetalheItem';
}

class DetalheItemArgs {
  const DetalheItemArgs({this.key, required this.id});

  final _i6.Key? key;

  final int id;

  @override
  String toString() {
    return 'DetalheItemArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i4.ComprarItem]
class ComprarItem extends _i5.PageRouteInfo<void> {
  const ComprarItem() : super(ComprarItem.name, path: '/comprar-item');

  static const String name = 'ComprarItem';
}
