// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$todoRepositoryHash() => r'0d271169d1a8a602e0ee8b97027d7b3369db1b28';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [todoRepository].
@ProviderFor(todoRepository)
const todoRepositoryProvider = TodoRepositoryFamily();

/// See also [todoRepository].
class TodoRepositoryFamily extends Family<TodoRepository> {
  /// See also [todoRepository].
  const TodoRepositoryFamily();

  /// See also [todoRepository].
  TodoRepositoryProvider call(
    FirebaseFirestore? client,
  ) {
    return TodoRepositoryProvider(
      client,
    );
  }

  @override
  TodoRepositoryProvider getProviderOverride(
    covariant TodoRepositoryProvider provider,
  ) {
    return call(
      provider.client,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'todoRepositoryProvider';
}

/// See also [todoRepository].
class TodoRepositoryProvider extends Provider<TodoRepository> {
  /// See also [todoRepository].
  TodoRepositoryProvider(
    FirebaseFirestore? client,
  ) : this._internal(
          (ref) => todoRepository(
            ref as TodoRepositoryRef,
            client,
          ),
          from: todoRepositoryProvider,
          name: r'todoRepositoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$todoRepositoryHash,
          dependencies: TodoRepositoryFamily._dependencies,
          allTransitiveDependencies:
              TodoRepositoryFamily._allTransitiveDependencies,
          client: client,
        );

  TodoRepositoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.client,
  }) : super.internal();

  final FirebaseFirestore? client;

  @override
  Override overrideWith(
    TodoRepository Function(TodoRepositoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TodoRepositoryProvider._internal(
        (ref) => create(ref as TodoRepositoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        client: client,
      ),
    );
  }

  @override
  ProviderElement<TodoRepository> createElement() {
    return _TodoRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TodoRepositoryProvider && other.client == client;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, client.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TodoRepositoryRef on ProviderRef<TodoRepository> {
  /// The parameter `client` of this provider.
  FirebaseFirestore? get client;
}

class _TodoRepositoryProviderElement extends ProviderElement<TodoRepository>
    with TodoRepositoryRef {
  _TodoRepositoryProviderElement(super.provider);

  @override
  FirebaseFirestore? get client => (origin as TodoRepositoryProvider).client;
}

String _$fetchListHash() => r'7c79cba7c6a49e331fe6e764861249f30cb0692e';

/// See also [fetchList].
@ProviderFor(fetchList)
const fetchListProvider = FetchListFamily();

/// See also [fetchList].
class FetchListFamily extends Family<AsyncValue<List<Todo>>> {
  /// See also [fetchList].
  const FetchListFamily();

  /// See also [fetchList].
  FetchListProvider call(
    FirebaseFirestore? client,
  ) {
    return FetchListProvider(
      client,
    );
  }

  @override
  FetchListProvider getProviderOverride(
    covariant FetchListProvider provider,
  ) {
    return call(
      provider.client,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchListProvider';
}

/// See also [fetchList].
class FetchListProvider extends AutoDisposeStreamProvider<List<Todo>> {
  /// See also [fetchList].
  FetchListProvider(
    FirebaseFirestore? client,
  ) : this._internal(
          (ref) => fetchList(
            ref as FetchListRef,
            client,
          ),
          from: fetchListProvider,
          name: r'fetchListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchListHash,
          dependencies: FetchListFamily._dependencies,
          allTransitiveDependencies: FetchListFamily._allTransitiveDependencies,
          client: client,
        );

  FetchListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.client,
  }) : super.internal();

  final FirebaseFirestore? client;

  @override
  Override overrideWith(
    Stream<List<Todo>> Function(FetchListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchListProvider._internal(
        (ref) => create(ref as FetchListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        client: client,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<List<Todo>> createElement() {
    return _FetchListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchListProvider && other.client == client;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, client.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchListRef on AutoDisposeStreamProviderRef<List<Todo>> {
  /// The parameter `client` of this provider.
  FirebaseFirestore? get client;
}

class _FetchListProviderElement
    extends AutoDisposeStreamProviderElement<List<Todo>> with FetchListRef {
  _FetchListProviderElement(super.provider);

  @override
  FirebaseFirestore? get client => (origin as FetchListProvider).client;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
