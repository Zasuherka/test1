import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/domain/enums/order.dart';
import 'package:test/domain/model/table.dart' as tbl;
import 'package:test/internal/bloc/item/item_bloc.dart';
import 'package:test/presentation/constants.dart';
import 'package:test/presentation/createPage/create_page.dart';
import 'package:test/presentation/update_item_page/update_item_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> listDrop = ['По возрастанию', 'По убыванию'];
  String dropdownValue = '';

  int page = 1;
  int pageSize = 10;

  Order order = Order.ASC;

  final Widget sliverOffset = const SliverToBoxAdapter(
    child: SizedBox(
      height: 15,
    ),
  );

  tbl.Table? table;

  @override
  void initState() {
    super.initState();
    context.read<ItemBloc>().add(ItemEvent.getTable(
        page: page, pageSize: pageSize, sortOrder: order.order));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              pinned: true,
              toolbarHeight: MediaQuery.of(context).padding.top + 20,
              title: const Text('Номенклатура'),
              centerTitle: true,
              actions: [
                GestureDetector(
                    onTap: () {},
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CreatePage())),
                      child: const Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(Icons.create_new_folder,
                            size: 30, color: AppColors.buttonColor2),
                      ),
                    )),
              ],
            ),
            sliverOffset,
            SliverToBoxAdapter(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const Text('Страница: '),
                    SizedBox(
                      width: 50,
                      child: TextField(
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                        ],
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: AppColors.gray,
                            counterText: ''),
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          page = int.tryParse(value) ?? 1;
                          context.read<ItemBloc>().add(ItemEvent.getTable(
                              page: page,
                              pageSize: pageSize,
                              sortOrder: order.order));
                        },
                      ),
                    ),
                    const Text('На странице: '),
                    SizedBox(
                      width: 50,
                      child: TextField(
                        textAlign: TextAlign.center,
                        maxLength: 3,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                        ],
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: AppColors.gray,
                            counterText: ''),
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          pageSize = int.tryParse(value) ?? 10;
                          context.read<ItemBloc>().add(ItemEvent.getTable(
                              page: page,
                              pageSize: pageSize,
                              sortOrder: order.order));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            sliverOffset,
            SliverToBoxAdapter(
              child: BlocBuilder<ItemBloc, ItemState>(
                builder: (context, state) {
                  List<TableRow> rowList = [];

                  state.whenOrNull(table: (value) {
                    table = value;
                  });
                  rowList = <TableRow>[
                    TableRow(children: [
                      TableCell(
                          child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (order == Order.ASC) {
                              order = Order.DESK;
                            } else {
                              order = Order.ASC;
                            }
                          });
                          context.read<ItemBloc>().add(ItemEvent.getTable(
                              page: page,
                              pageSize: pageSize,
                              sortOrder: order.order));
                        },
                        child: Container(
                          //width: 100,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Название'),
                              const SizedBox(
                                width: 5,
                              ),
                              Icon(order == Order.ASC
                                  ? Icons.arrow_downward
                                  : Icons.arrow_upward)
                            ],
                          ),
                        ),
                      )),
                      TableCell(
                        child: Container(
                          //width: 100,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          child: const Text('Единица измеренияя'),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          alignment: Alignment.center,
                          //width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          child: const Text('Артикул'),
                        ),
                      ),
                    ])
                  ];

                  if (table != null) {
                    table!.listNomenclature.forEach((element) {
                      rowList.add(TableRow(children: [
                        TableCell(
                          child: GestureDetector(
                            onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => UpdatePage(
                                        id: element.id,
                                        name: element.name,
                                        description: element.description ?? '',
                                        measurementUnits: element.measurementUnits ?? '',
                                        code: element.code ?? ''
                                    ))),
                            child: Container(
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(),
                              ),
                              child: Text(element.name),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Container(
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(),
                            ),
                            child: Text(element.measurementUnits ?? ''),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Container(
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(),
                            ),
                            child: Text(element.code ?? ''),
                          ),
                        ),
                      ]));
                    });
                  }
                  return Table(children: rowList);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
