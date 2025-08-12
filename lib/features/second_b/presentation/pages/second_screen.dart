import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing_arch/features/second_b/presentation/bloc/second_b_bloc.dart';
    
class SecondScreen extends StatelessWidget {

  const SecondScreen({ super.key });
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: const Text('Users')),
      body: BlocBuilder<SecondBBloc, SecondBState>(
        builder: (context, state) {
          if (state is SecondBInitial) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is SecondBFetched) {
            return ListView.builder(
              itemCount: state.users.length,
              itemBuilder: (context, index) {
                final user = state.users[index];
                return ListTile(
                  title: Text(user.name),
                  subtitle: Text(user.email),
                );
              },
            );
          } else if (state is SecondBError) {
            return Center(child: Text(state.message));
          }
          return const SizedBox();
        },
      ),
    );
  }
}