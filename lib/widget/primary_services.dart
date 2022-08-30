import 'package:get/get.dart';

class PrimaryController extends GetxController implements GetxService{

  /*Placemark _placemark = Placemark();
  Placemark _pickPlaceMark = Placemark();
  Placemark get placemark=> _placemark;
  Placemark get pickPlaceMark=> _pickPlaceMark;*/

  final List<String> _addressTypeList = ['bus', 'train', 'metro'];
  List<String> get addressTypeList => _addressTypeList;
  int _addressTypeIndex = 0;
  int get addressTypeIndex => _addressTypeIndex;

  void setAddressTypeIndex(int Index){
    _addressTypeIndex = Index;
    update();
  }
}