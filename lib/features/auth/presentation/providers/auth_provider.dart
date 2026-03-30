import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/auth_remote_datasource_impl.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../../domain/entities/user.dart';
import '../../domain/usecases/login_usecase.dart';

part 'auth_provider.g.dart';

@riverpod
AuthRemoteDataSourceImpl authRemoteDataSource(Ref ref) {
  return AuthRemoteDataSourceImpl();
}

@riverpod
AuthRepositoryImpl authRepository(Ref ref) {
  return AuthRepositoryImpl(ref.watch(authRemoteDataSourceProvider));
}

@riverpod
LoginUseCase loginUseCase(Ref ref) {
  return LoginUseCase(ref.watch(authRepositoryProvider));
}

@riverpod
class AuthNotifier extends _$AuthNotifier {
  @override
  FutureOr<User?> build() => null;

  Future<void> login(String email, String password) async {
    state = const AsyncLoading();

    try {
      final useCase = ref.read(loginUseCaseProvider);
      final user = await useCase(email.trim(), password);
      state = AsyncData(user);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }
}

/// Alias to keep call sites explicit/readable with latest generator naming.
final authNotifierProvider = authProvider;
