import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:stack_demo/features/authentication/data/firebase_auth_repository.dart';
import 'package:stack_demo/features/todo/presentation/todo_screen.dart';
import 'package:stack_demo/routing/not_found.dart';
import 'package:stack_demo/routing/go_router_refresh_stream.dart';

part 'router.g.dart';

// Private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();

// Our routes
enum AppRoute {
  signIn,
  profile,
  home
}

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return GoRouter(
    initialLocation: '/signIn',
    navigatorKey: _rootNavigatorKey,
    redirect: (context, state) {
      // Check if the user is logged in
      final isLoggedIn = authRepository.currentUser != null;
      final path = state.uri.path;
      if(isLoggedIn) {
        if(path.startsWith('/signIn')) {
          return '/home';
        }
      }
      else {
        if(path.startsWith('/home')) {
          return '/signIn';
        }
      }
      return null;
    },
    refreshListenable: GoRouterRefreshStream(authRepository.authStateChanges()),
    routes: [
      GoRoute(
        path: '/signIn',
        name: AppRoute.signIn.name,
        pageBuilder: (context, state) => NoTransitionPage(
          child: SignInScreen(
            providers: [
              GoogleProvider(
                clientId: '990475974401-de4v73ndo3s0svbdf9v7rckoo3f2n7ml.apps.googleusercontent.com',
              )
            ],
          )
        ),
      ),
      GoRoute(
        path: '/profile',
        name: AppRoute.profile.name,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: ProfileScreen(),
        ),
      ),
      GoRoute(
        path: '/home',
        name: AppRoute.home.name,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: TodoScreen(),
        ),
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
}
