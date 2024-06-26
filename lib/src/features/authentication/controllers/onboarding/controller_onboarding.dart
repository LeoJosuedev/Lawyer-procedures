import "package:flutter/material.dart";
import "package:get/get.dart";

class OnBoardingController extends GetxController {
  static OnBoardingController get instance  => Get.find();
  

  // variables
  final pageController = PageController();
  Rx<int> currentPageIndex =0.obs;
  // update current page when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // jump to specific dot selected page
  void dotNavigationClick(index){
  currentPageIndex.value = index;
  pageController.jumpToPage(index);
  }
  // update current index & jump to next page
  void nextPage(){
    if(currentPageIndex.value == 2){
      // Get.to(LoginScreen);
    }else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }
  // update current index & jump to last page
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}