import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_new/features/splash_screen/splash_screen.dart';

import 'features/task/presentation/bloc/task_bloc.dart';
import 'features/task/presentation/bloc/task_event.dart';
import 'init_dependencies.dart' as di;
import 'core/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // ✅ Initialize dependencies (repository, usecases, bloc etc.)
  await di.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => di.sl<TaskBloc>()..add(const GetAllTasksEvents())),
      ],
      child: MaterialApp(
        title: 'UpTodo',
        theme: AppTheme.drakThemeMode,
        home: const SplashScreen(),
      ),
    );
  }
}
