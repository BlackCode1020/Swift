//
//  ViewController.swift
//  Lesson-02
//
//  Created by 李泽 on 14/9/21.
//  Copyright (c) 2014年 蓝鸥科技. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        /// 控制流
        // 使用if和switch来进行条件判断，使用for-in、for、while、do-while来进行循环。包裹条件和循环变量括号可以省略，但是基本预聚体的大括号是必须的
        // 定义分数数组
        let scores = [54, 67, 25, 89, 90, 12]
        var maxScore = 0
        // for-in 快速遍历所有分数
        for score in scores {
            // if 判断最大分数注意：条件必须是一个布尔表达式
            if score > maxScore {
                maxScore = score
            }
        }
        println("最大分数是：\(maxScore)")
        
        // 可以使用if和let处理值缺失的情况
        // 有些变量的值是可选的。一个可选的值可以是一个具体的值或者nil，表示值缺失。在类型后面加一个问号来标记这个变量的值是可选的
        var optionalString: String? = "optionalString"
        optionalString = nil
        var age: Int? = 18
        age = nil
        var myScore: Float? = nil
        
        // 下面这种写法是错误的，想要赋值为空，需要使用“？”来标记
        // var gender = "男"
        // gender = nil
        
        var optionalName: String? = nil
        var greeting = "Hello"
        if let name = optionalName { // 把optionalName的值赋给name，然后判断name是否为空
            greeting = "hello, \(name)"
            println(greeting)
        } else {
            println(greeting)
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

