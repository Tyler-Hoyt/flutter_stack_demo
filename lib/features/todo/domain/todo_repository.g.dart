// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$todoRepositoryHash() => r'bd082c7811065305e849f34378ad710cd0d17f50';

/// See also [todoRepository].
@ProviderFor(todoRepository)
final todoRepositoryProvider = AutoDisposeProvider<TodoRepository>.internal(
  todoRepository,
  name: r'todoRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$todoRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TodoRepositoryRef = AutoDisposeProviderRef<TodoRepository>;
String _$fetchListHash() => r'49fb4644cf8e2890e0447a6015161606df94f33c';

/// See also [fetchList].
@ProviderFor(fetchList)
final fetchListProvider = AutoDisposeStreamProvider<List<Todo>>.internal(
  fetchList,
  name: r'fetchListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fetchListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchListRef = AutoDisposeStreamProviderRef<List<Todo>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
