import 'package:assignment/utils/colors.dart';
import 'package:assignment/utils/dimensions.dart';
import 'package:flutter/material.dart';

class NumericStepButton extends StatefulWidget {
  final int minValue;
  final int maxValue;

  final ValueChanged<int> onChanged;

  const NumericStepButton(
      {Key? key, this.minValue = 0, this.maxValue = 10, required this.onChanged})
      : super(key: key);

  @override
  State<NumericStepButton> createState() {
    return _NumericStepButtonState();
  }
}

class _NumericStepButtonState extends State<NumericStepButton> {

  int counter= 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: Dimensions.height45-22,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.mainVioletColor, width: 1),
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(
                Icons.remove,
                color: Theme.of(context).accentColor,
              ),
              padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 18.0),
              iconSize: 18.0,
              color: Theme.of(context).primaryColor,
              onPressed: () {
                setState(() {
                  if (counter > widget.minValue) {
                    counter--;
                  }
                  widget.onChanged(counter);
                });
              },
            ),
          ),
          Container(
            height: Dimensions.height45-18,
            width: Dimensions.width30-5,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.mainVioletColor, width: 1),
              color: Colors.white,
              shape: BoxShape.rectangle,
            ),
            child: Text(
              '$counter',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            height: Dimensions.height45-18,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.mainVioletColor, width: 1),
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(
                Icons.add,
                color: Theme.of(context).accentColor,
              ),
              padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 18.0),
              iconSize: 20.0,
              color: Theme.of(context).primaryColor,
              onPressed: () {
                setState(() {
                  if (counter < widget.maxValue) {
                    counter++;
                  }
                  widget.onChanged(counter);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}