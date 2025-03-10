import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:real_social/src/models/real_user.dart';
import 'package:real_social/src/presentation/home/home.dart';
import 'package:real_social/src/presentation/landing/landing.dart';
import 'package:real_social/src/repositories/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
Raw<RootStackRouter> router(Ref ref) {
  final user = ref.watch(userRepositoryProvider);
  return RootStackRouter.build(
    navigatorKey: rootNavigatorKey,
    routes: [
      NamedRouteDef(
        name: 'HomeRoute',
        path: '/home',
        initial: true,
        guards: [AuthGuard(user)],
        builder: (context, data) => HomePage(),
      ),
      NamedRouteDef(name: 'LandingRoute', path: '/landing', builder: (context, data) => LandingPage()),
    ],
  );
}

class AuthGuard extends AutoRouteGuard {
  const AuthGuard(this.user);
  final RealUser? user;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (user != null) {
      resolver.next(true);
    } else {
      resolver.redirectUntil(NamedRoute('LandingRoute'));
    }
  }
}
