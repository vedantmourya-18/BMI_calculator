import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'ReusablrCard.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.BmiCalculation,@required this.BmiFeed,@required this.BmiResult});
  final String BmiCalculation;
  final String BmiResult;
  final String BmiFeed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                  child: Text(
            'Your Result',
            style: resultText,
          ))),
          Expanded(
            flex: 5,
            child: ReusableCard(
                colour: activeCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      BmiResult.toUpperCase(),
                      style: resultcomment,
                    ),
                    Text(
                      BmiCalculation,
                      style: kResult,
                    ),
                    Text(
                      BmiFeed,
                        style: kTip,
                        )
                  ],
                )),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.only(top: 15),
              color: bottomContainerColor,
              height: bottomContainerHeight,
              child: Center(child: Text('RE-CALCULATE',style: kLargeText,)),
            ),
          ),
        ],
      ),
    );
  }
}
