import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qsoft_test/models/entities/product/product.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {

  CartCubit() : super(const CartState());


}
