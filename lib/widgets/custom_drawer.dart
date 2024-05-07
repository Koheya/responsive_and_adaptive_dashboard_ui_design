import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_item.dart';
import 'package:responsive_dash_board/widgets/drawer_items_list_view.dart';
import 'package:responsive_dash_board/widgets/user_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserListTile(
              userInfoModel: UserInfoModel(
                  image: Assets.imagesAvatar3,
                  title: "Lekan Okeowo",
                  subTitle: "demo@gmail.com"),
            ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      title: "Settings System",
                      image: Assets.imagesSettingSystem),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      title: "Logout Account",
                      image: Assets.imagesLogoutAccount),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
