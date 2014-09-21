//
//  AppDelegate.swift
//  Lesson-01
//
//  Created by 李泽 on 14/9/20.
//  Copyright (c) 2014年 蓝鸥科技. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        
        
        // 1. Swift经过了数年的酝酿，Apple通过改进现有的编译器、调试器和框架结构奠定呢Swift的基础，并通过Automatic Reference Counting (ARC) 简化了内存管理。Swift的framework stack建立再坚实得Foundation和Cocoa基础上，实现了现代化和彻底标准化
        // 2.对于Objective-C开发者来说，Swift看起来会很熟悉。它具有Objective-C命名参数的易读性和动态对象模型的强大之处，提供无缝接入现有Cocoa框架和Objective-C混编的能力。基于这个共同点，Swift引入许多新的特性、同意的程序和面向对象的语言部分
        // 3. Swift对于新程序员是友好的，作为一具有表现力和令人愉悦的脚本语言，它是第一个获得工业品质的系统编程语言。它支持playgrounds，一个允许程序员调试Swift代码并立即看到结果的革新性功能，而不需要反复编译运行程序
        
        
        
        
        
        // 一：
        /// 输出语句
        println("Hello,World")
        // 这行代码就是一个完整的程序。你不需要为了输入输出或者字符串处理导入一个单独的库。全局作用域中的代码会被自动当做程序的入口点，所以你也不需要main函数。你同样不需要在每个语句结尾写上分号
        
        
        
        
        // 二：
        /// 简单值
        // 使用let来声明常量，使用var来声明变量
        // 一个常量的值在编译时并不需要获取，但是你只能为它赋值一次
        
        // 常量，值不可以修改
        let name = "李大泽"
        let gender = "男"
        let age = 20
        let phoneNumber = 18331000747
        
        // 变量，值可以修改
        var email = "lize@lanou3g.com"
        var address = "北京海淀区清河毛纺路路南甲36号金五星商业大厦5层"
        var birthland = "河北省唐山市"
        
        // 常量或者变量的类型必须和你赋给他们的值一样。然后，声明时类型是可选的，声明的同时赋值的话，编译器会根据初始值自动推断类型，如果初始值没有提供足够多得信息（或者没有初始值），那你就需要在变量后面声明类型，用冒号分隔
        var score1 = 70                         // 自动为integer类型
        var score2 = 70.0                       // 自动位Double类型
        var score3: Double = 70                 // 手动为Double类型
        var genderBool: Bool = true             // 手动为Bool类型
        var nameStr: String = "李大泽"           // 手动为String类型
        var ageInt: Int = 18                    // 手动为Int类型
        
        // 值永远不会被隐式转换为其他类型。如果你需要把一个值转换成其他类型，请显示转换
        let label = "The width is: "
        let width = 23
        let labelWidth = label + String(width) // 将值显示转换
        // 有一种更简单的把值转换成字符串的方法：把值写到括号中，并且在括号之前写一个反斜杠。例如：
        let iPhoneCount = 5
        let iPadCount = 3
        var iPhoneSummary = "I have \(iPhoneCount) iPhones"
        var iPadCountSummary = "I have \(iPadCount) iPads"
        
        
        // 数组
        var likeTheProducts = ["iPhone", "iPad", "iPod", "MacBook", "Mac Pro"]
        likeTheProducts[0] = "iPhone 6 Plus"                        // 根据下标修改数组中的值
        likeTheProducts[3] = "MacBook Pro"                          // 根据下标修改数组中的值
        println("linkTheProducts Count: \(likeTheProducts.count)")  // 获取数组长度
        likeTheProducts.append("Apple Watch")                       // 数组后面拼接内容
        likeTheProducts.insert("Beats", atIndex: 0)                 // 指定位置插入
        likeTheProducts.removeLast()                                // 删除最后一个
        likeTheProducts.removeAtIndex(0)                            // 根据下标删除
        println("First Element: \(likeTheProducts.first)")          // 第一个元素
        println("Last Element: \(likeTheProducts.last)")            // 最后一个元素
        println("Is Empty: \(likeTheProducts.isEmpty)")             // 是否为空
        
        // 字典
        var beFondOf = ["sport": "runing", "song": "Pop", "foot": "sweetmeat"]
        beFondOf["song"] = "Rock"                                   // 根据key值修改字典中的值
        beFondOf["foot"] = "sweetmeats"                             // 根据key值修改字典中的值
        println("beFontOf Count: \(beFondOf.count)")                // 字典的长度
        beFondOf.updateValue("run", forKey: "sport")                // 根据key，修改value
        beFondOf.removeValueForKey("sport")                         // 根据key，删除键值对
        var allKeys = beFondOf.keys.array                           // 获取所有的keys
        var allValues = beFondOf.values.array                       // 获取所有的values
        var beFondOfIsEmpty: Bool = beFondOf.isEmpty                // 判断是否为空
        println(beFondOfIsEmpty)
        
        // 创建一个空得数组或者字典，使用初始化方法
        // 创建空数组
        // error: Array types are now written with the brackets around the element type
        // solve: 将“var names = String[]()” 修改为“var names = [String]()”
        var nameArray = [String]()                  // 定义一个String类型空数组
        var ageArray = [Int]()                      // 定义一个Int类型空数组
        // names.insert("lidaze", atIndex: 2)        // 发生错误：“fatal error: Array index out of range“（数组下标越界）
        // nameArray[0] = "wangxiaoer" // !!当数组为空的时候，不能使用这种方式赋值，编译没问题，运行就会报数组小标越界的错误
        nameArray.insert("lidaze", atIndex: 0)
        
        
        // 创建空字典
        var scoreDict = Dictionary<String, Float>()     // 创建字典设定key和value的类型
        scoreDict.updateValue(100, forKey: "xiaowang")  // 更新即是插入
        scoreDict.updateValue(98.0, forKey: "xiaoer")
        println(scoreDict["xiaoer"])                    // 取值
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

