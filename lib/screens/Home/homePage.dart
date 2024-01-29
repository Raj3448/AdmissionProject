import 'package:flutter/material.dart';
import 'package:flutter_application_1/Bloc/AuthBloc/auth_bloc.dart';
import 'package:flutter_application_1/cubit/homeCubit/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final receivedUid = context.read<AuthBloc>().getUID;
    print("Reveived User Id1234 : =====================>>>>> $receivedUid");
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: const BoxDecoration(
              color: Colors.indigo,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Home',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {
                        context.read<AuthBloc>().add(AuthLogOutRequested());
                      },
                      icon: const Icon(Icons.logout_rounded))
                ],
              ),
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.9,
              decoration: const BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: FutureBuilder(
                  future: context.read<HomeCubit>().GetHomeData(receivedUid!),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if(snapshot.data == null){
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return Center(
                      child: SizedBox(
                        height: 500,
                        width: 300,
                        child: Text(snapshot.data['firstName'],
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
