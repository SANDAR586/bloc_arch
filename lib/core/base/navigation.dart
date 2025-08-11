import 'package:go_router/go_router.dart';
import 'package:testing_arch/features/first_c/first_screen.dart';
import 'package:testing_arch/features/fourth_provider/presentation/pages/fourth_screen.dart';
import 'package:testing_arch/features/second_b/presentation/pages/second_screen.dart';
import 'package:testing_arch/features/third_c/presentation/pages/third_screen.dart';

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

     GoRoute(
      path: '/second',
      builder: (context, state) => const SecondScreen(),
    ),
     GoRoute(
      path: '/third',
      builder: (context, state) => const ThirdScreen(),
    ),
     GoRoute(
      path: '/foruth',
      builder: (context, state) => const FourthScreen(),
    ),

    
   
   
  ],
);
