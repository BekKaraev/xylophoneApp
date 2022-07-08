import 'package:flutter/material.dart';
import 'package:xylophoneapp/constants/colors/app_colors.dart';
import 'package:xylophoneapp/widgets/appBar_widget.dart';
import 'package:xylophoneapp/widgets/custom_container.dart';

class Xylophone extends StatefulWidget {
  const Xylophone({Key key}) : super(key: key);

  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const AppBarWidget(),
      body: Center(
        child: Column(
          children:const [
           CustomContainer(notaNumber:'1',color: AppColors.redDark,),
           CustomContainer(notaNumber:'2',color: AppColors.yellowDark,),
           CustomContainer(notaNumber:'3',color: AppColors.yellow,),
           CustomContainer(notaNumber:'4',color: AppColors.green,),
           CustomContainer(notaNumber:'5',color: AppColors.greenDark,),
           CustomContainer(notaNumber:'6',color: AppColors.blueDark,),
           CustomContainer(notaNumber:'7',color: AppColors.pink,),
          ],
        ),
      ),
    );
  }
}
