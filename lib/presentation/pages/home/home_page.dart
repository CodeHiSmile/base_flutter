import 'package:demo/application/home/home_cubit.dart';
import 'package:demo/commons/app_colors.dart';
import 'package:demo/domain/models/entities/note_entity.dart';
import 'package:demo/domain/models/enums/load_status.dart';
import 'package:demo/locator/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<HomeCubit>()
          ..getListNote()
          ..getList2(),
        child: SafeArea(
          child: BlocBuilder<HomeCubit, HomeState>(
            buildWhen: (prev, current) => prev.loadStatus != current.loadStatus,
            builder: (cubit, state) {
              List<NoteEntity> listNote = [];
              if (state.listNote != null && state.listNote!.isNotEmpty) {
                listNote.addAll(state.listNote!);
              }
              if (state.loadStatus == LoadStatus.loading) {
                return const Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(AppColors.primaryLightColor),
                  ),
                );
              } else if (state.loadStatus == LoadStatus.failure) {
                return const Center(
                  child: Text("Đã xảy ra lỗi"),
                );
              } else {
                if (listNote.isEmpty) {
                  return const Center(
                    child: Text("Không có ghi chú nào"),
                  );
                } else {
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: listNote.length,
                    itemBuilder: (context, index) {
                      final item = listNote[index];
                      return Container(
                        color: index % 2 == 0 ? Colors.white : Colors.grey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("${item.title}"),
                            Text("${item.content}"),
                            Text("${item.time}"),
                          ],
                        ),
                      );
                    },
                  );
                }
              }
            },
          ),
        ),
      ),
    );
  }
}
