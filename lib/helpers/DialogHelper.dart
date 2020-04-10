import 'package:expensex/widgets/ExitConfirmationDialog.dart';
import 'package:flutter/material.dart';

class DialogHelper{

  static exit (context) => showDialog(context: context, builder: (context) => ExitConfirmationDialog(),);

}