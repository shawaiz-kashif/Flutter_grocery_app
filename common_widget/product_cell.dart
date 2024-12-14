// // Ye Home Screen ke Saath hay ItEM CARD
// import 'package:flutter/material.dart';
// import '../common/color_extension.dart';

// class ProductCell extends StatelessWidget {
//   final Map pObj;
//   final VoidCallback onPressed;
//   final VoidCallback onCart;
//   // final double margin;
//   // final double weight;

//   const ProductCell(
//       {super.key,
//       required this.pObj,
//       required this.onPressed,
//       // this.weight = 180,
//       // this.margin = 8,
//       required this.onCart});

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onPressed,
//       child: Container(
//         width: 180,
//         margin: const EdgeInsets.symmetric(horizontal: 8),
//         padding: const EdgeInsets.all(15),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           border:
//               Border.all(color: TColor.placeholder.withOpacity(0.5), width: 1),
//           borderRadius: BorderRadius.circular(15),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   pObj["icon"],
//                   width: 100,
//                   height: 80,
//                   fit: BoxFit.contain,
//                 ),
//               ],
//             ),
//             const Spacer(),
//             Text(
//               pObj["name"],
//               style: TextStyle(
//                 color: TColor.primaryText,
//                 fontSize: 16,
//                 fontWeight: FontWeight.w700,
//               ),
//             ),
//             const SizedBox(
//               height: 2,
//             ),
//             Text(
//               "${pObj["qty"]}${pObj["unit"]}",
//               style: TextStyle(
//                 color: TColor.secondaryText,
//                 fontSize: 14,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             const Spacer(),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   pObj["price"],
//                   style: TextStyle(
//                     color: TColor.primaryText,
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 InkWell(
//                   onTap: onCart,
//                   child: Container(
//                     width: 40,
//                     height: 40,
//                     decoration: BoxDecoration(
//                       color: TColor.button,
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     alignment: Alignment.center,
//                     child: Image.asset(
//                       "assets/img/add.png",
//                       width: 15,
//                       height: 15,
//                     ),
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../common/color_extension.dart';

class ProductCell extends StatelessWidget {
  final Map pObj;
  final VoidCallback onPressed;
  final VoidCallback onCart;

  const ProductCell({
    super.key,
    required this.pObj,
    required this.onPressed,
    required this.onCart,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 180,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          border:
              Border.all(color: TColor.placeholder.withOpacity(0.5), width: 1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  pObj["icon"] ?? "assets/img/placeholder.png", // Default icon
                  width: 100,
                  height: 80,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const Spacer(),
            Text(
              pObj["name"] ?? "Unknown", // Default to "Unknown"
              style: TextStyle(
                color: TColor.primaryText,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              "${pObj["qty"] ?? 0}${pObj["unit"] ?? ""}", // Default values
              style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  pObj["price"] ?? "N/A", // Default price
                  style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                // InkWell(
                //   onTap: onCart,
                //   child: Container(
                //     width: 40,
                //     height: 40,
                //     decoration: BoxDecoration(
                //       color: TColor.button,
                //       borderRadius: BorderRadius.circular(15),
                //     ),
                //     alignment: Alignment.center,
                //     child: Image.asset(
                //       "assets/img/add.png",
                //       width: 15,
                //       height: 15,
                //     ),
                //   ),
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}