import 'dart:math';
class CalculatorBrain{
  CalculatorBrain({this.weight,this.height});
  final int height;
  final int weight;
  double _bmi;
  String Calculator(){
   _bmi = weight/pow(height/100, 2);
   return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi>=25)
      {
     return 'overweight';
      }
    else if(_bmi>18.5)
      {
        return 'normal';
      }
    else return 'underweight';
  }
  String FeedBack(){
    if(_bmi>=25)
    {
      return 'You are overweight,You need to Exercise';
    }
    else if(_bmi>18.5)
    {
      return 'Good Job,Maintain same level of fitness';
    }
    else return 'You are underweight,You need to gain weight ';
  }
  }
