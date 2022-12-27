
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController
{
  int i=0;

  void Plusplus()
  {
    i++;
    update();
  }

  void Twox()
  {
   i = i * 2;
    update();
  }

  void Fourx()
  {
    i = i * 4;
    update();
  }

  void Sixx()
  {
    i = i * 6;
    update();
  }

  void Minus() {
    i--;
    update();
  }

  void Clear() {
    i = 0;
    update();
  }
}