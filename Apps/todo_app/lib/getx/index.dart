import 'package:get/get.dart';

class Controller extends GetxController {
  RxInt postId = 0.obs;

  setPostId(int postId) => this.postId = RxInt(postId);
}
