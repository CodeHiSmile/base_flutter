import 'package:demo/application/note/note_cubit.dart';
import 'package:demo/commons/app_colors.dart';
import 'package:demo/commons/app_text_styles.dart';
import 'package:demo/locator/locator.dart';
import 'package:demo/presentation/components/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotePage extends StatefulWidget {
  const NotePage({Key? key}) : super(key: key);

  @override
  _NotePageState createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///Khi cần dùng nhiều cubit thì dùng MultiBlocProvider, TH này chỉ là demo
      body: MultiBlocProvider(
        providers: [
          BlocProvider(create: (contextChild) => getIt<NoteCubit>()),
        ],
        child: BlocBuilder<NoteCubit, NoteState>(
          builder: (cubit, state) {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text("Title: ", style: AppTextStyle.textBackS14W500),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 44,
                      child: AppTextField(
                        controller: cubit.read<NoteCubit>().titleController,
                        hintText: "Enter title note",
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text("Content: ", style: AppTextStyle.textBackS14W500),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 44,
                      child: AppTextField(
                        controller: cubit.read<NoteCubit>().contentController,
                        hintText: "Enter content note",
                      ),
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: (){
                        cubit.read<NoteCubit>().createNote();
                      },
                      child: Container(
                        height: 44,
                        margin: const EdgeInsets.symmetric(horizontal: 54),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.primaryLightColor,
                        ),
                        child: const Center(
                          child: Text(
                            "Create note",
                            style: AppTextStyle.textWhiteS14W500,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
