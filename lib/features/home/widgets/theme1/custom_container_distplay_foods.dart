import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:stackfood_multivendor/util/images.dart';

import '../../../../common/widgets/custom_image_widget.dart';
import '../../../../helper/responsive_helper.dart';
import '../../../../util/dimensions.dart';
import '../../../../util/styles.dart';
import '../../../food/domain/models/food_model.dart';
import '../../../food/domain/models/food_nearly_model.dart';
import '../../../food/screens/food_details_screen.dart';

class HighlightFoodsWidget extends StatelessWidget {

  final FoodsModel? food;
 // final FoodsNearlyModel? product;
  final bool isFoodNear;
  const HighlightFoodsWidget({super.key,this.food,this.isFoodNear= false,});

  @override
  Widget build(BuildContext context) {
    bool desktop = ResponsiveHelper.isDesktop(context);
    return

//         Container(
//           // margin: const EdgeInsets.only(bottom: Dimensions.paddingSizeSmall),
//           decoration: BoxDecoration(
//
//             borderRadius: BorderRadius.circular(Dimensions.radiusSmall),
//             color: Theme.of(context).cardColor,
//             boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.1), spreadRadius: 1, blurRadius: 10, offset: const Offset(0, 1))],
//           ),
// child: Container(
//   width: double.infinity,
//   height: 200.h,
//   decoration: BoxDecoration(
//     image: DecorationImage(fit: BoxFit.fitWidth,image: NetworkImage("${food!.imageFullUrl}")),
//   ),
// ),
//         ):
//      Container(
//      // margin: const EdgeInsets.only(bottom: Dimensions.paddingSizeSmall),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(Dimensions.radiusSmall),
//         color: Theme.of(context).cardColor,
//         boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.1), spreadRadius: 1, blurRadius: 10, offset: const Offset(0, 1))],
//       ),
//       child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//
//         Stack(children: [
//           ClipRRect(
//               borderRadius: const BorderRadius.vertical(top: Radius.circular(Dimensions.radiusSmall)),
//               child: CustomImageWidget(
//                 image: '${food!.imageFullUrl}',
//                height:context.height * 0.4,width: double.infinity,
//                // height: context.width * 0.3, width: Dimensions.webMaxWidth, fit: BoxFit.cover,
//                 //isRestaurant: true,
//               )
//           ),
//           DiscountTagWidget(
//             discount: Get.find<FoodsController>().getDiscount(food!),
//             discountType: Get.find<FoodsController>().getDiscountType(food!),
//            // freeDelivery: restaurant!.freeDelivery,
//           ),
//          // Get.find<RestaurantController>().isOpenNow(restaurant!) ? const SizedBox() : const NotAvailableWidget(isRestaurant: true),
//         ]),
//
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeSmall),
//           child: Row(children: [
//
//             Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
//
//               Text(
//                 food!.name!,
//                 style: robotoMedium.copyWith(fontSize: Dimensions.fontSizeSmall),
//                 maxLines: desktop ? 2 : 1, overflow: TextOverflow.ellipsis,
//               ),
//               const SizedBox(height: 2),
//
//               // (restaurant!.address != null) ? Text(
//               //   restaurant!.address ?? '',
//               //   style: robotoRegular.copyWith(
//               //     fontSize: Dimensions.fontSizeExtraSmall,
//               //     color: Theme.of(context).disabledColor,
//               //   ),
//               //   maxLines: 1, overflow: TextOverflow.ellipsis,
//               // ) : const SizedBox(),
//               // SizedBox(height: restaurant!.address != null ? 2 : 0),
//
//               RatingBarWidget(
//                 rating: food!.avgRating!.toDouble(), size: desktop ? 15 : 12,
//                 ratingCount: food!.ratingCount,
//               ),
//             ]),
//             const SizedBox(width: Dimensions.paddingSizeSmall),
//
//             // GetBuilder<FavouriteController>(builder: (favouriteController) {
//             //   bool isWished = favouriteController.wishRestIdList.contains(restaurant!.id);
//             //   return InkWell(
//             //     onTap: () {
//             //       if(Get.find<AuthController>().isLoggedIn()) {
//             //         isWished ? favouriteController.removeFromFavouriteList(restaurant!.id, true)
//             //             : favouriteController.addToFavouriteList(null, restaurant?.id, true);
//             //       }else {
//             //         showCustomSnackBar('you_are_not_logged_in'.tr);
//             //       }
//             //     },
//             //     child: Padding(
//             //       padding: EdgeInsets.symmetric(vertical: desktop ? Dimensions.paddingSizeSmall : 0),
//             //       child: Icon(
//             //         isWished ? Icons.favorite : Icons.favorite_border,  size: desktop ? 30 : 25,
//             //         color: isWished ? Theme.of(context).primaryColor : Theme.of(context).disabledColor,
//             //       ),
//             //     ),
//             //   );
//             // }),
//
//           ]),
//         ),
//
//       ]),
//     ):


    //  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    //   height: 280,
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(Dimensions.radiusDefault),
    //     color: Theme.of(context).cardColor,
    //     border: Border.all(color: Theme.of(context).disabledColor.withOpacity(0.07), width: 2),
    //
    //   ),
    //   product != null ?
    //   Container(
    //     margin:  EdgeInsets.symmetric(vertical: 10, horizontal:  20),
    //     height:isFoodNear? 280: null,
    //     // width: double.infinity,
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(Dimensions.radiusDefault),
    //       color: Theme.of(context).cardColor,
    //       border: Border.all(color: Theme.of(context).disabledColor.withOpacity(0.07), width: 2),
    //     ),
    //     child: InkWell(
    //       onTap: (){
    //         //Get.to(()=>FoodDetailsScreen(foodsModel: food,));
    //         // Get.toNamed(RouteHelper.getRestaurantRoute(product?.restaurantId),
    //         //   arguments: RestaurantScreen(restaurant: Restaurant(id: product?.restaurantId)),
    //         // );
    //         // ResponsiveHelper.isMobile(context) ? Get.bottomSheet(
    //         //   ProductBottomSheetWidget(product: product, inRestaurantPage: true, isCampaign: true),
    //         //   backgroundColor: Colors.transparent, isScrollControlled: true,
    //         // ) : Get.dialog(
    //         //   Dialog(child: ProductBottomSheetWidget(product: product, inRestaurantPage: true)),
    //         // );
    //       },
    //       child: Column(children: [
    //       //* 567823411
    //       //* 1 to 9
    //         ClipRRect(
    //           borderRadius: const BorderRadius.vertical(top: Radius.circular(Dimensions.radiusDefault)),
    //           child: Stack(
    //             children: [
    //               CustomImageWidget(
    //                 image: product!.imageFullUrl ?? '',
    //                 fit: BoxFit.cover, height: 160.h, width: double.infinity,
    //               ),
    //
    //               (product!.ratingCount == 1 ) ?
    //               Positioned(
    //                 right: 10, top: 10,
    //                 child: Container(
    //                   // padding: const EdgeInsets.all(5),
    //                   height: 20.h,
    //                   width: 40.w,
    //                   decoration: BoxDecoration(
    //                     color:Colors.black.withOpacity(0.30),
    //                     borderRadius: BorderRadius.circular(4.r),
    //                     //border: Border.all(color: Theme.of(context).cardColor, width: 2),
    //                     // boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 0)],
    //                   ),
    //                   child: Row(
    //                     children: [
    //                       product!.ratingCount == 1 ?
    //                       Text('${product!.avgRating?.toStringAsFixed(1)}', style: robotoBold.copyWith(color: Theme.of(context).cardColor,fontSize: 20.sp)) : const SizedBox(),
    //                       SizedBox(width: food!.ratingCount == 1 ? 5 : 0),
    //                       product!.ratingCount == 1 ? Icon(Icons.star, color: Theme.of(context).cardColor, size: 15) : const SizedBox(),
    //                     ],
    //                   ),
    //                 ),
    //               ):SizedBox(),
    //               Positioned(
    //                 left: 10, top: 10,
    //                 child: Container(
    //                   height: 20.h,
    //                   width: 50.w,
    //                   alignment: Alignment.center,
    //                   //padding: const EdgeInsets.all(5),
    //                   decoration: BoxDecoration(
    //                     color: Color(0xff7C0631),
    //                     borderRadius: BorderRadius.circular(4.r),
    //                     // border: Border.all(color: Theme.of(context).cardColor, width: 2),
    //                     // boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 0)],
    //                   ),
    //                   child: Text('${"remaining".tr} ${product!.itemStock}',textAlign: TextAlign.center,style: TextStyle(
    //                     color:Colors.white,fontSize: 9.sp,fontWeight: FontWeight.w700,
    //                   ),),
    //                 ),
    //               ),
    //               Positioned(
    //                 right: 10, bottom: 10,
    //                 child: Row(
    //                   spacing: 5.w,
    //                   children: [
    //                     Container(
    //                       decoration: BoxDecoration(
    //                         color: Theme.of(context).cardColor,
    //                         shape: BoxShape.circle,
    //                         border: Border.all(color: Theme.of(context).primaryColor.withOpacity(0.1), width: 2),
    //                       ),
    //                       child: ClipOval(
    //                         child: CustomImageWidget(
    //                           image: product!.restaurantImage ?? '',
    //                           height: 32, width: 32, fit: BoxFit.cover,
    //                         ),
    //                       ),
    //                     ),
    //                     Column(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       spacing: 3.h,
    //                       children: [
    //                         Text( product!.restaurantName!,textAlign: TextAlign.center,style: TextStyle(
    //                           color:Colors.white,fontSize: 9.sp,fontWeight: FontWeight.w700,
    //                         ),
    //                         ),  Text(product!.restaurantAddress!,textAlign: TextAlign.center,style: TextStyle(
    //                           color:Colors.white,fontSize: 9.sp,fontWeight: FontWeight.w700,
    //                         ),),
    //                       ],
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               //: const SizedBox(),
    //             ],
    //           ),
    //         ),
    //
    //         Padding(
    //           padding: const EdgeInsets.all(12),
    //           child: Column(children: [
    //             Row(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
    //
    //               Text(
    //                   product!.name ?? '', style: robotoMedium.copyWith(fontSize: Dimensions.fontSizeLarge, fontWeight: FontWeight.w600),
    //                   maxLines: 1, overflow: TextOverflow.ellipsis
    //               ),
    //
    //               Text(
    //                 "${product!.price} ${"sar".tr}" ,
    //                 style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeSmall, color: Theme.of(context).hintColor),
    //                 maxLines: 2, overflow: TextOverflow.ellipsis,
    //               ),
    //             ]),
    //             Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    //
    //               Row(
    //
    //                 children: [
    //                  SvgPicture.asset(Images.locations),
    //                   SizedBox(width:5.w),
    //                   Text(
    //                     product!.availableIn == 1 ? "available_branch".tr : product!.availableIn == 2 ? "two_branches_available".tr: "${product!.availableIn} ${"available_branches".tr}",
    //                     style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeSmall, color: Theme.of(context).hintColor),
    //                     maxLines: 1, overflow: TextOverflow.ellipsis,
    //                   ),
    //                   SizedBox(width: 5.w,),
    //                   if(product!.restaurantOpeningTime != null && product!.restaurantClosingTime != null)
    //                   Icon(Icons.access_time_outlined,size: 15,),
    //                   SizedBox(width: 2.w,),
    //                   if(product!.restaurantOpeningTime != null && product!.restaurantClosingTime != null)
    //                   Text(
    //                     "${product!.restaurantOpeningTime ?? ''} - ${product!.restaurantClosingTime ?? ''}",
    //                     style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeSmall, color: Theme.of(context).hintColor),
    //                     maxLines: 1, overflow: TextOverflow.ellipsis,
    //                   ),
    //                 ],
    //               ),
    //               Text(
    //                 "${product!.discount} ${"sar".tr}" ?? '',
    //                 style:
    //                 robotoRegular.copyWith(fontSize: Dimensions.fontSizeSmall, color: Theme.of(context).hintColor,decoration: TextDecoration.lineThrough,),
    //
    //                 maxLines: 1, overflow: TextOverflow.ellipsis,
    //               ),
    //
    //               // GetBuilder<FavouriteController>(builder: (favouriteController) {
    //               //   bool isWished = favouriteController.wishRestIdList.contains(product.restaurantId);
    //               //   return CustomFavouriteWidget(
    //               //     isWished: isWished,
    //               //     isRestaurant: true,
    //               //     restaurantId: product.restaurantId,
    //               //   );
    //               // }),
    //
    //
    //             ]),
    //
    //             // !isRestaurant ?
    //             // GetBuilder<CartController>(
    //             //     builder: (cartController) {
    //             //       int cartQty = cartController.cartQuantity(product!.id!);
    //             //       int cartIndex = cartController.isExistInCart(product!.id, null);
    //             //       CartModel cartModel = CartModel(
    //             //         null, food!.price!.toDouble(), food!.discount!.toDouble(), (food!.price!.toDouble() - food!.discount!.toDouble()),
    //             //         1, [], [], false, product, [], product?.cartQuantityLimit,[],
    //             //       );
    //             //       return cartQty != 0 ? Container(
    //             //         decoration: BoxDecoration(
    //             //           color: Theme.of(context).primaryColor,
    //             //           borderRadius: BorderRadius.circular(Dimensions.radiusExtraLarge),
    //             //         ),
    //             //         child: Row(children: [
    //             //           InkWell(
    //             //             onTap: cartController.isLoading ? null : () {
    //             //               if (cartController.cartList[cartIndex].quantity! > 1) {
    //             //                 cartController.setQuantity(false, cartModel, cartIndex: cartIndex);
    //             //               }else {
    //             //                 cartController.removeFromCart(cartIndex);
    //             //               }
    //             //             },
    //             //             child: Container(
    //             //               decoration: BoxDecoration(
    //             //                 color: Theme.of(context).cardColor,
    //             //                 shape: BoxShape.circle,
    //             //                 border: Border.all(color: Theme.of(context).primaryColor),
    //             //               ),
    //             //               padding: const EdgeInsets.all(Dimensions.paddingSizeExtraSmall),
    //             //               child: Icon(
    //             //                 Icons.remove, size: 16, color: Theme.of(context).primaryColor,
    //             //               ),
    //             //             ),
    //             //           ),
    //             //
    //             //           Padding(
    //             //             padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeSmall),
    //             //             child: Text(
    //             //               cartQty.toString(),
    //             //               style: robotoMedium.copyWith(fontSize: Dimensions.fontSizeSmall, color: Theme.of(context).cardColor),
    //             //             ),
    //             //           ),
    //             //
    //             //           InkWell(
    //             //             onTap: cartController.isLoading ? null : () {
    //             //               cartController.setQuantity(true, cartModel, cartIndex: cartIndex);
    //             //             },
    //             //             child: Container(
    //             //               decoration: BoxDecoration(
    //             //                 color: Theme.of(context).cardColor,
    //             //                 shape: BoxShape.circle,
    //             //                 border: Border.all(color: Theme.of(context).primaryColor),
    //             //               ),
    //             //               padding: const EdgeInsets.all(Dimensions.paddingSizeExtraSmall),
    //             //               child: Icon(
    //             //                 Icons.add, size: 16, color: Theme.of(context).primaryColor,
    //             //               ),
    //             //             ),
    //             //           ),
    //             //         ]),
    //             //       ) : InkWell(
    //             //         onTap: () => Get.find<ProductController>().productDirectlyAddToCart(product, context),
    //             //         child: Container(
    //             //           decoration: BoxDecoration(
    //             //             color: Theme.of(context).cardColor,
    //             //             shape: BoxShape.circle,
    //             //             boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.1), spreadRadius: 1, blurRadius: 10, offset: const Offset(0, 1))],
    //             //           ),
    //             //           child: Icon(Icons.add, size: desktop ? 30 : 25, color: Theme.of(context).primaryColor),
    //             //         ),
    //             //       );
    //             //     }
    //             // )
    //             //: const SizedBox(),
    //           ]),
    //         ),
    //
    //       ]),
    //     ),
    //   ):
    Container(
      margin:  EdgeInsets.symmetric(vertical: 10, horizontal: isFoodNear? 20: 10),
       height:isFoodNear? 280: null,
      // width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.radiusDefault),
        color: Theme.of(context).cardColor,
        border: Border.all(color: Theme.of(context).disabledColor.withOpacity(0.07), width: 2),
      ),
      child: InkWell(
        onTap: (){
          Get.to(()=>FoodDetailsScreen(foodsModel: food,));
          // Get.toNamed(RouteHelper.getRestaurantRoute(product?.restaurantId),
          //   arguments: RestaurantScreen(restaurant: Restaurant(id: product?.restaurantId)),
          // );
          // ResponsiveHelper.isMobile(context) ? Get.bottomSheet(
          //   ProductBottomSheetWidget(product: product, inRestaurantPage: true, isCampaign: true),
          //   backgroundColor: Colors.transparent, isScrollControlled: true,
          // ) : Get.dialog(
          //   Dialog(child: ProductBottomSheetWidget(product: product, inRestaurantPage: true)),
          // );
        },
        child: Column(children: [

          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(Dimensions.radiusDefault)),
            child: Stack(
              children: [
                CustomImageWidget(
                  image: food!.imageFullUrl ?? '',
                  fit: BoxFit.cover, height: 160.h, width: double.infinity,
                ),

                 (food!.ratingCount == 1 ) ?
                Positioned(
                  right: 10, top: 10,
                  child: Container(
                    // padding: const EdgeInsets.all(5),
                    height: 20.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      color:Colors.black.withOpacity(0.30),
                      borderRadius: BorderRadius.circular(4.r),
                      //border: Border.all(color: Theme.of(context).cardColor, width: 2),
                      // boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 0)],
                    ),
                    child: Row(
                      children: [
                        food!.ratingCount == 1 ?
                        Text('${food!.avgRating?.toStringAsFixed(1)}', style: robotoBold.copyWith(color: Theme.of(context).cardColor,fontSize: 20.sp)) : const SizedBox(),
                        SizedBox(width: food!.ratingCount == 1 ? 5 : 0),
                        food!.ratingCount == 1 ? Icon(Icons.star, color: Theme.of(context).cardColor, size: 15) : const SizedBox(),
                      ],
                    ),
                  ),
                ):SizedBox(),
                Positioned(
                  left: 10, top: 10,
                  child: Container(
                    height: 20.h,
                    width: 50.w,
                    alignment: Alignment.center,
                    //padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xff7C0631),
                      borderRadius: BorderRadius.circular(4.r),
                      // border: Border.all(color: Theme.of(context).cardColor, width: 2),
                      // boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 0)],
                    ),
                    child: Text('${"remaining".tr} ${food!.itemStock}',textAlign: TextAlign.center,style: TextStyle(
                      color:Colors.white,fontSize: 9.sp,fontWeight: FontWeight.w700,
                    ),),
                  ),
                ),
                Positioned(
                  right: 10, bottom: 10,
                  child: Row(
                    spacing: 5.w,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          shape: BoxShape.circle,
                          border: Border.all(color: Theme.of(context).primaryColor.withOpacity(0.1), width: 2),
                        ),
                        child: ClipOval(
                          child: CustomImageWidget(
                            image: food!.restaurantImage ?? '',
                            height: 32, width: 32, fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        //spacing: 3.h,
                        children: [
                          Text( food!.restaurantName!,textAlign: TextAlign.center,style: TextStyle(
                            color:Colors.white,fontSize:12.sp,fontWeight: FontWeight.w700,
                          ),
                          ),  Text(food!.restaurantAddress!,maxLines: 1,overflow: TextOverflow.ellipsis,textAlign: TextAlign.center,style: TextStyle(
                               color:Colors.white,fontSize: 12.sp,fontWeight: FontWeight.w700,
                             ),),

                        ],
                      ),
                    ],
                  ),
                ),
                //: const SizedBox(),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(children: [
              Row(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [

                Text(
                    food!.name ?? '', style: robotoMedium.copyWith(fontSize: Dimensions.fontSizeLarge, fontWeight: FontWeight.w600),
                    maxLines: 1, overflow: TextOverflow.ellipsis
                ),

                Text(
                  "${food!.price} ${"sar".tr}" ,
                  style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeSmall, color: Theme.of(context).hintColor),
                  maxLines: 2, overflow: TextOverflow.ellipsis,
                ),
              ]),
              Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [

               Row(

                    children: [
                     SvgPicture.asset(Images.locations),
                      SizedBox(width:5.w),
                      Text(
                        food!.availableIn == 1 ? "available_branch".tr : food!.availableIn == 2 ? "two_branches_available".tr: "${food!.availableIn} ${"available_branches".tr}",
                        style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeSmall, color: Theme.of(context).hintColor),
                        maxLines: 1, overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(width: 5.w,),
                      if(food!.restaurantOpeningTime != null && food!.restaurantClosingTime != null)
                      Icon(Icons.access_time_outlined,size: 15,),
                      SizedBox(width: 2.w,),
                      if(food!.restaurantOpeningTime != null && food!.restaurantClosingTime != null)
                      Text(
                        "${food!.restaurantOpeningTime ?? ''} - ${food!.restaurantClosingTime ?? ''}",
                        style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeSmall, color: Theme.of(context).hintColor),
                        maxLines: 1, overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                Text(
                  "${food!.discount} ${"sar".tr}" ?? '',
                  style:
                  robotoRegular.copyWith(fontSize: Dimensions.fontSizeSmall, color: Theme.of(context).hintColor,decoration: TextDecoration.lineThrough,),

                  maxLines: 1, overflow: TextOverflow.ellipsis,
                ),
              ]),

              // !isRestaurant ?
              // GetBuilder<CartController>(
              //     builder: (cartController) {
              //       int cartQty = cartController.cartQuantity(product!.id!);
              //       int cartIndex = cartController.isExistInCart(product!.id, null);
              //       CartModel cartModel = CartModel(
              //         null, food!.price!.toDouble(), food!.discount!.toDouble(), (food!.price!.toDouble() - food!.discount!.toDouble()),
              //         1, [], [], false, product, [], product?.cartQuantityLimit,[],
              //       );
              //       return cartQty != 0 ? Container(
              //         decoration: BoxDecoration(
              //           color: Theme.of(context).primaryColor,
              //           borderRadius: BorderRadius.circular(Dimensions.radiusExtraLarge),
              //         ),
              //         child: Row(children: [
              //           InkWell(
              //             onTap: cartController.isLoading ? null : () {
              //               if (cartController.cartList[cartIndex].quantity! > 1) {
              //                 cartController.setQuantity(false, cartModel, cartIndex: cartIndex);
              //               }else {
              //                 cartController.removeFromCart(cartIndex);
              //               }
              //             },
              //             child: Container(
              //               decoration: BoxDecoration(
              //                 color: Theme.of(context).cardColor,
              //                 shape: BoxShape.circle,
              //                 border: Border.all(color: Theme.of(context).primaryColor),
              //               ),
              //               padding: const EdgeInsets.all(Dimensions.paddingSizeExtraSmall),
              //               child: Icon(
              //                 Icons.remove, size: 16, color: Theme.of(context).primaryColor,
              //               ),
              //             ),
              //           ),
              //
              //           Padding(
              //             padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeSmall),
              //             child: Text(
              //               cartQty.toString(),
              //               style: robotoMedium.copyWith(fontSize: Dimensions.fontSizeSmall, color: Theme.of(context).cardColor),
              //             ),
              //           ),
              //
              //           InkWell(
              //             onTap: cartController.isLoading ? null : () {
              //               cartController.setQuantity(true, cartModel, cartIndex: cartIndex);
              //             },
              //             child: Container(
              //               decoration: BoxDecoration(
              //                 color: Theme.of(context).cardColor,
              //                 shape: BoxShape.circle,
              //                 border: Border.all(color: Theme.of(context).primaryColor),
              //               ),
              //               padding: const EdgeInsets.all(Dimensions.paddingSizeExtraSmall),
              //               child: Icon(
              //                 Icons.add, size: 16, color: Theme.of(context).primaryColor,
              //               ),
              //             ),
              //           ),
              //         ]),
              //       ) : InkWell(
              //         onTap: () => Get.find<ProductController>().productDirectlyAddToCart(product, context),
              //         child: Container(
              //           decoration: BoxDecoration(
              //             color: Theme.of(context).cardColor,
              //             shape: BoxShape.circle,
              //             boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.1), spreadRadius: 1, blurRadius: 10, offset: const Offset(0, 1))],
              //           ),
              //           child: Icon(Icons.add, size: desktop ? 30 : 25, color: Theme.of(context).primaryColor),
              //         ),
              //       );
              //     }
              // )
                  //: const SizedBox(),
            ]),
          ),

        ]),
      ),
    );
    // Container(
    //   margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    //   height: 280,
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(Dimensions.radiusDefault),
    //     color: Theme.of(context).cardColor,
    //     border: Border.all(color: Theme.of(context).disabledColor.withOpacity(0.07), width: 2),
    //
    //   ),
    //   child: InkWell(
    //     onTap: (){
    //       // Get.toNamed(RouteHelper.getRestaurantRoute(product?.restaurantId),
    //       //   arguments: RestaurantScreen(restaurant: Restaurant(id: product?.restaurantId)),
    //       // );
    //      Get.to(()=>FoodDetailsScreen(foodNearly: product,));
    //     },
    //     child: Column(children: [
    //
    //       Expanded(
    //         flex: 5,
    //         child: ClipRRect(
    //           borderRadius: const BorderRadius.vertical(top: Radius.circular(Dimensions.radiusDefault)),
    //           child: Stack(
    //             children: [
    //               CustomImageWidget(
    //                 image: product?.imageFullUrl ?? '',
    //                 fit: BoxFit.cover, height: 160, width: double.infinity,
    //               ),
    //
    //                (product!.ratingCount == 1 ) ?
    //               Positioned(
    //                 right: 10, top: 10,
    //                 child: Container(
    //                   // padding: const EdgeInsets.all(5),
    //                   height: 20.h,
    //                   width: 40.w,
    //                   decoration: BoxDecoration(
    //                     color:Colors.black.withOpacity(0.30),
    //                     borderRadius: BorderRadius.circular(4.r),
    //                     //border: Border.all(color: Theme.of(context).cardColor, width: 2),
    //                     // boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 0)],
    //                   ),
    //                   child: Row(
    //                     children: [
    //                       product?.ratingCount == 1 ?
    //                       Text('${product!.avgRating?.toStringAsFixed(1)}', style: robotoBold.copyWith(color: Theme.of(context).cardColor,fontSize: 20.sp)) : const SizedBox(),
    //                       SizedBox(width: product!.ratingCount == 1 ? 5 : 0),
    //                       product!.ratingCount == 1 ? Icon(Icons.star, color: Theme.of(context).cardColor, size: 15) : const SizedBox(),
    //                     ],
    //                   ),
    //                 ),
    //               ):SizedBox(),
    //               Positioned(
    //                 left: 10, top: 10,
    //                 child: Container(
    //                   height: 20.h,
    //                   width: 50.w,
    //                   alignment: Alignment.center,
    //                   //padding: const EdgeInsets.all(5),
    //                   decoration: BoxDecoration(
    //                     color: Color(0xff7C0631),
    //                     borderRadius: BorderRadius.circular(4.r),
    //                     // border: Border.all(color: Theme.of(context).cardColor, width: 2),
    //                     // boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 0)],
    //                   ),
    //                   child: Text('${"remaining".tr} ${product!.sellCount}',textAlign: TextAlign.center,style: TextStyle(
    //                     color:Colors.white,fontSize: 9.sp,fontWeight: FontWeight.w700,
    //                   ),),
    //                 ),
    //               ),  Positioned(
    //                 right: 10, bottom: 10,
    //                 child: Row(
    //                   spacing: 5.w,
    //                   children: [
    //                     Container(
    //                       decoration: BoxDecoration(
    //                         color: Theme.of(context).cardColor,
    //                         shape: BoxShape.circle,
    //                         border: Border.all(color: Theme.of(context).primaryColor.withOpacity(0.1), width: 2),
    //                       ),
    //                       child: ClipOval(
    //                         child: CustomImageWidget(
    //                           image: product!.imageFullUrl ?? '',
    //                           height: 32, width: 32, fit: BoxFit.cover,
    //                         ),
    //                       ),
    //                     ),
    //                     Column(
    //                       spacing: 3.h,
    //                       children: [
    //                         Text( product!.restaurantName!,textAlign: TextAlign.center,style: TextStyle(
    //                           color:Colors.white,fontSize: 9.sp,fontWeight: FontWeight.w700,
    //                         ),
    //                         ),  Text('',textAlign: TextAlign.center,style: TextStyle(
    //                           color:Colors.white,fontSize: 9.sp,fontWeight: FontWeight.w700,
    //                         ),),
    //                       ],
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               //: const SizedBox(),
    //             ],
    //           ),
    //         ),
    //       ),
    //
    //       Expanded(
    //         flex: 3,
    //         child: Padding(
    //           padding: const EdgeInsets.all(12),
    //           child: Column(children: [
    //             Flexible(
    //               child: Row(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
    //
    //                 Text(
    //                     product!.name ?? '', style: robotoMedium.copyWith(fontSize: Dimensions.fontSizeLarge, fontWeight: FontWeight.w600),
    //                     maxLines: 1, overflow: TextOverflow.ellipsis
    //                 ),
    //
    //                 Text(
    //                   "${product!.price} ${"sar".tr}" ,
    //                   style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeSmall, color: Theme.of(context).hintColor),
    //                   maxLines: 2, overflow: TextOverflow.ellipsis,
    //                 ),
    //               ]),
    //             ),
    //             Flexible(
    //               child: Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    //                 Row(
    //
    //                   children: [
    //                     Text(
    //                       '',
    //                       style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeSmall, color: Theme.of(context).hintColor),
    //                       maxLines: 1, overflow: TextOverflow.ellipsis,
    //                     ),
    //                     SizedBox(width: 5.w,),
    //                     Icon(Icons.access_time_outlined,size: 15,),
    //                     SizedBox(width: 2.w,),
    //                     Text(
    //                       "${product!.restaurantOpeningTime?? ''} - ${product!.restaurantClosingTime ?? ''}",
    //                       style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeSmall, color: Theme.of(context).hintColor),
    //                       maxLines: 1, overflow: TextOverflow.ellipsis,
    //                     ),
    //                   ],
    //                 ),
    //                 // Text(
    //                 //   product!.restaurantName ?? '',
    //                 //   style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeSmall, color: Theme.of(context).hintColor),
    //                 //   maxLines: 2, overflow: TextOverflow.ellipsis,
    //                 // ),
    //                 Text(
    //                   "${product!.discount} ${"sar".tr}" ?? '',
    //                   style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeSmall, color: Theme.of(context).hintColor,decoration: TextDecoration.lineThrough),
    //                   maxLines: 1, overflow: TextOverflow.ellipsis,
    //                 ),
    //
    //                 // GetBuilder<FavouriteController>(builder: (favouriteController) {
    //                 //   bool isWished = favouriteController.wishRestIdList.contains(product.restaurantId);
    //                 //   return CustomFavouriteWidget(
    //                 //     isWished: isWished,
    //                 //     isRestaurant: true,
    //                 //     restaurantId: product.restaurantId,
    //                 //   );
    //                 // }),
    //               ]),
    //             ),
    //           ]),
    //         ),
    //       ),
    //
    //     ]),
    //   ),
    // );
  }
}
