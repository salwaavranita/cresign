import 'package:get/get.dart';

class DetailsController extends GetxController {

  RxList savedDataList = [].obs;

  Map<String,dynamic> saveData(dynamic data) {
    try{
      savedDataList.add(data);
      print(savedDataList);
      return {
        "error" : false,
        "message" : "Berhasil Menambah Ke My Project"
      };
    }catch(error){
      return {
        "error" : true,
        "message" : error
      };
    }
  }

  Map<String,dynamic> removeData(int index) {
    try{
      if (index >= 0 && index < savedDataList.length) {
        savedDataList.removeAt(index);
        print(savedDataList);
      }
      return {
        "error" : false,
        "message" : "Berhasil Menghapus dari My Project"
      };
    }catch(error){
      return {
        "error" : true,
        "message" : error
      };
    }
  }

}
