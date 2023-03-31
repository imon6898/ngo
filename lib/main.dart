import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:ngo/src/commons/di/networkServiceLocator.dart';
import 'package:ngo/src/commons/di/preferenceServiceLocator.dart';
import 'package:ngo/src/commons/utils/style/global_style.dart';
import 'package:ngo/src/features/contacts/contacts_di.dart';
import 'package:ngo/src/features/main/home/currency_items/currency_di.dart';
import 'package:ngo/src/features/main/home/view/home_di.dart';
import 'package:ngo/src/features/main/home/view/home_screen.dart';
import 'package:ngo/src/features/main/view/view_main.dart';
import 'package:ngo/src/features/transfer/trasnfer_di.dart';
import 'package:ngo/src/features/user/user_di.dart';


void main() async {
  runApp(MyApp());
  setUpPreferenceServiceLocator();
  setUpNetworkServiceLocator();
  await setUpHomeServiceLocator();
  await setUpCurrencyServiceLocator();
  await setUpUserServiceLocator();
  await setUpContactsServiceLocator();
  await setUpTransferServiceLocator();

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: GetIt.I.allReady(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                  primaryColor: GlobalStyle.primaryColor,
                  secondaryHeaderColor: GlobalStyle.primaryColor,
                  fontFamily: 'IranSansRegular'
              ),
              home: MainStatefulWidget(),
            );
          } else {
            return Container();
          }
        });
  }

}
