import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/internal/bloc/item/item_bloc.dart';
import 'package:test/presentation/constants.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {

  final Widget sliverOffset = const SliverToBoxAdapter(
    child: SizedBox(
      height: 15,
    ),
  );

  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  String name = '';
  String description = '';
  String measurementUnits = '';
  String code = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                pinned: true,
                toolbarHeight: MediaQuery.of(context).padding.top + 20,
                title: const Text('Новая позиция'),
                centerTitle: true,
              ),
              sliverOffset,
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  width: 200,
                  child: TextFormField(
                    validator: (value){
                      if(value == null){
                        return 'Малое количество знаков';
                      }
                      if(value.length < 3){
                        return 'Малое количество знаков';
                      }
                      return null;
                    },
                    onChanged: (value){
                      name = value;
                    },
                    maxLength: 25,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      label: Text(
                        'Название',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.textHintColor
                          )
                        ),
                    ),
                  ),
                ),
              ),
              sliverOffset,
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  width: 200,
                  child: TextFormField(
                    validator: (value){
                      if(value == null){
                        return 'Малое количество знаков';
                      }
                      if(value.length < 3){
                        return 'Малое количество знаков';
                      }
                      return null;
                    },
                    onChanged: (value){
                      measurementUnits = value;
                    },
                    maxLength: 15,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      label: Text(
                        'Единицы измерения',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.textHintColor
                          )
                      ),
                    ),
                  ),
                ),
              ),
              sliverOffset,
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  width: 200,
                  child: TextField(
                    onChanged: (value){
                      code = value;
                    },
                    maxLength: 15,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      label: Text(
                        'Артикул/код',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.textHintColor
                          )
                      ),
                    ),
                  ),
                ),
              ),
              sliverOffset,
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  width: 200,
                  child: TextField(
                    maxLength: 100,
                    minLines: 3,
                    maxLines: 3,
                    onChanged: (value){
                      description = value;
                    },
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      label: Text(
                        'Описание',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.textHintColor
                          )
                      ),
                    ),
                  ),
                ),
              ),
              sliverOffset,
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),
                    GestureDetector(
                      child: Container(
                        width: 150,
                        decoration: BoxDecoration(
                          color: AppColors.buttonColor1,
                          boxShadow: boxShadow,
                          borderRadius: BorderRadius.circular(25)
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'Отмена',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        if(_key.currentState != null && _key.currentState!.validate()){
                          context.read<ItemBloc>().add(ItemEvent.createNomenclature(
                            name: name,
                            measurementUnits: measurementUnits,
                            description: description == '' ? null : description,
                            code: code == '' ? null : code,
                          ));
                        }
                      },
                      child: Container(
                        width: 150,
                        decoration: BoxDecoration(
                            color: AppColors.buttonColor2,
                            boxShadow: boxShadow,
                            borderRadius: BorderRadius.circular(25)
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'Создать',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              sliverOffset,
              SliverToBoxAdapter(
                child: BlocBuilder<ItemBloc, ItemState>(
                  builder: (context, state){
                    String text = '';
                    state.whenOrNull(
                        successfulCreation: (_) => text = 'Успешно создано',
                        failure: (_) => text = 'Ошибка',
                    );
                    return Text(text,
                      textAlign: TextAlign.center,
                    );
                  }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
