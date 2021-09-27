import 'package:flutter/material.dart';
import 'package:ui_app/widgets/custom_carousel.dart';
import 'package:ui_app/widgets/grid_games.dart';
import 'package:ui_app/widgets/list_category.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomCarousel(
            ImgList: [
              'https://cdn1.epicgames.com/salesEvent/salesEvent/EGS_Battlefield2042_DICE_S1_2560x1440-36f16374c9c29a18a46872795b483d72',
              'https://www.gamersrd.com/wp-content/uploads/2020/06/maxresdefault-22-e1591913106876.jpg',
              'https://as.com/meristation/imagenes/2021/09/01/noticias/1630484017_494506_1630484120_noticia_normal_recorte1.jpg',
              'https://www.somosxbox.com/wp-content/uploads/2021/08/zf5pkugg3vg71.jpg'
            ],
          ),
          ListCategory(),
          GridGames()
        ],
      ),
    );
  }
}
