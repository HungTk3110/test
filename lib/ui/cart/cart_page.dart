import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qsoft_test/common/app_text_styles.dart';
import 'package:qsoft_test/ui/cart/cart_cubit.dart';
import 'package:qsoft_test/ui/home/home_cubit.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> with TickerProviderStateMixin {
  late CartCubit cubit;

  @override
  void initState() {
    cubit = BlocProvider.of<CartCubit>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade800,
        title: Text(
          'Home',
          style: AppTextStyle.whiteS18W500,
        ),
        centerTitle: true,
        actions: [
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {  },
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 16.w)
        ],
      ),
      body: _buildBodyWidget(),
    );
  }

  Widget _buildBodyWidget() {
    return SizedBox();
  }

}
