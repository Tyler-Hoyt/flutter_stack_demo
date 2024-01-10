import 'package:firebase_auth/firebase_auth.dart'
  hide EmailAuthProvider, AuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_providers.g.dart';

@Riverpod(keepAlive: true)
List<AuthProvider<AuthListener, AuthCredential>> authProviders(
  AuthProvidersRef ref) {
  return [
    GoogleProvider(
      clientId: '990475974401-de4v73ndo3s0svbdf9v7rckoo3f2n7ml.apps.googleusercontent.com'
    )
  ];
}
