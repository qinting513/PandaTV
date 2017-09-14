//
//  TabBarVC.swift
//  PandaTV
//
//  Created by QinTing on 2017/9/14.
//  Copyright © 2017年 QinTing. All rights reserved.
//

import UIKit

class TabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addChildViewControllers()
        
    }

   func addChildViewControllers() {
        setupChildVC("首页", img:"menu_homepage_nor", selectedImg: "menu_homepage_sel", controller: HomeVC.init())
        setupChildVC("游戏", img: "menu_youxi_nor", selectedImg: "menu_youxi_sel", controller: GameVC.init())
        setupChildVC("娱乐", img: "menu_yule_nor", selectedImg: "menu_yule_sel", controller: EntertainmentVC.init())
        setupChildVC("小葱秀", img: "menu_goddess_nor", selectedImg: "menu_goddess_sel", controller: SmallShowVC.init())
        setupChildVC("我的", img: "menu_mine_nor", selectedImg: "menu_mine_sel", controller: MeVC.init())
    }
    
    func setupChildVC(_ title:String,img:String,selectedImg:String,controller:UIViewController){
//        controller.title = title
        controller.tabBarItem.title = title
        controller.tabBarItem.image = UIImage(named: img)
        controller.tabBarItem.selectedImage = UIImage(named: selectedImg)
        controller.view.backgroundColor = kBgColor
        let navigationVC = BaseNavigationVC.init(rootViewController: controller)
        self.addChildViewController(navigationVC)
    }

}
