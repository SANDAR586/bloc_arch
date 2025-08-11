import 'package:go_router/go_router.dart';
import 'package:testing_arch/features/first/first_screen.dart';

/*
| Action       | Method                          | Stack Behavior       |
| ------------ | ------------------------------- | -------------------- |
| Push (Stack) | `context.push('/path')`         | Adds on top          |
| Replace      | `context.pushReplacement('/p')` | Replaces current     |
| Clear & Go   | `context.go('/path')`           | Clears history stack |
| Back         | `context.pop()`                 | Goes back            |

 GoRoute(path: '/', builder: (context, state) => HomeScreen()),

  **Example of a route with parameters**
    GoRoute(path: '/details/:id', builder: (context, state) {
      final id = state.params['id'];
      return DetailsScreen(id: id);
    }),

 */

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const FirstScreen(),
    ),
   
  ],
);
