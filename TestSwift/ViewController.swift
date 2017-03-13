//
//  ViewController.swift
//  TestSwift
//
//  Created by Xuedan on 2017/3/10.
//  Copyright © 2017年 Xuedan. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let ary : NSArray
        ary = ["7","8","9","10","11","12"]
        
        for index in 1 ..< 5 {
            
            let dic = ary[index]
            print(index,dic)
        }
        
        
        let allowedEntry = true
        let enteredDoorCode = false
        
        if !allowedEntry {
            print("ACCESS DENIED")
        }
        
        if allowedEntry && enteredDoorCode {
            print("Welcome")
        }else{
            print("ACCESS DENIED")
        }
        
        if allowedEntry || enteredDoorCode{
            print("Welcome")
        }else{
            print("ACCESS DENIED")
        }
        
        
        let t = test()
        t.demo()
        
        /***************************可选项*************************/
        /*********************************************************************
         1.可选值:可以有值,可以为nil(用 ? 表示可选值)
         ********************************************************************/
        // URL 为可选项
//        let URL = NSURL(String: "http://www.baidu.com/")
        let URL = NSURL(string: "http://www.baidu.com/")
        
        //str 为可选项
        var str : String? = "ningcol"
        
        var a:Int?
        print(a)
        
        if let myUrl = URL {
            print(myUrl)
        }
        
        var aName : String? = "ningcol"
        var aAge : Int? = 18
        
        if let name = aName,let age = aAge{
            print(name + String(age))
        }

        if var name = aName,let age = aAge{
            name = "lisi"
            print(name + String(age))
        }
        
        
        var dataList:[String]?
        
        dataList = ["zhangsan","lisi"];
        
        let count = dataList?.count ?? 0
        
        let cou = dataList!.count
        
        let num = 20
        
        if num > 10 {
            print("大于10")
        }else{
            print("小于或等于10")
        }
        
        let name = "nick"
        
        switch name {
        case "nick":
            let age = 18
            print("one \(age)")
        case "fil":
            print("two")
        case "Davi":
            print("three")
        case "": break
        case "tom","ningcol":
            print("tomeAndNingcol")
        default:
            print("other")
        }
        
        
        
        
        for i in 0..<10{
            print(i)
        }
        
        print("----步长循环----")
        
        for i in stride(from: 0, to: 12, by: 2){
            print(i)
        }
        
        for i in stride(from: 12, to: 0, by:-2){
            print(i)
        }
        
        
        let range  = 0...10
        for i in range.reversed(){
            print(i)
        }
        
        var n = 2
        while n < 100 {
            n = n * 2
        }
        
        print(n)
        
        var m = 2
        repeat {
            m = m * 2
        } while m < 100
        
        print (m)
        
        
        self.test07()
        
    }
    
    func test07(){
        
        var str:String = "Hello你好"
        print(str.lengthOfBytes(using: .utf8))
        
        print(str.characters.count)
        
        for a in str.characters{
            print(a)
        }
        
        let name : String? = "老王"
        let age = 80
        let location = "隔壁"
        
        print(location + (name ?? "a") + String(age) + "岁")
        
        print("\(location)\(name)\(age)岁")
        
        let rect = CGRect(x: 0, y: 0, width: 100, height: 100)
        print("\(rect)")
        
        let h = 13;
        let m = 5;
        let s = 9;
        
        let timeStr = String(format: "%02d:%02d:%02d", arguments: [h,m,s])
        let timeStr1 = String(format: "%02d:%02d:%02d",h,m,s);
        
        print("\(timeStr)\n\(timeStr1)")
        
        let bb = (str as NSString).substring(with: NSMakeRange(2, 5))
        
       print(bb)
        
        let index = str.index(str.startIndex, offsetBy: 3)
       let aa =  str.substring(from: index)
        print(aa)
       let bbb =  str.substring(from: "123".endIndex)
        print(bbb)
       let ccc = str.substring(to: index)
        print(ccc)
        
        // String 使用 Range
        let myRange = str.startIndex..<str.index(str.startIndex, offsetBy: 5)
        let ddd = str.substring(with: myRange)
        print(ddd)
        
        let myRange1 = index..<str.index(str.startIndex, offsetBy: 5)
        let ddd1 = str.substring(with: myRange1)
        
        print(ddd1)
        
        // 元组的元素个数固定，不允许增加、删除
        var stu = (404,"小白")
        // 支持嵌套
        var msg = ("基本信息", ("李刚",34))
        print(stu)
        print(msg)
        
        var (a,b) = stu
        print(a,b)
        
        let (c,_) = stu
        print(c)
        
        //通过序号获得元组的值
        print("status is \(stu.0)")
        
        stu.0 = 500
        print("\(stu.0)")
        
        let message = (status: 100, msg: "哈哈")
        print("message is \(message.status) and \(message.msg)")
        
        let array1 = ["zhangsan","lisi"]
        let array2 = [1,2,3,4,5]
        
        var array3 = [Int]()
        
        let array4 = [String]()
        
        let array5:[Any] = ["zhangsan","lisi",20];
        
        var arr3 = [Double](repeating: 0.0, count: 3)
        var arr4 = Array(repeating: 3.0, count:3)
        
        var arr : [String] = ["Alex","Brian","Dave"]
        print(arr.count)
        print(arr[0])
        
        for name in array1{
            print(name)
        }
        
        for i in 0..<array2.count{
            print(array2[i])
        }
        
        
        
        
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

class test{
    func demo(){
        let aNick: String? = "ningcol"
        let aAge: Int? = 10
        guard let nick = aNick ,let age = aAge  else {
            print("nil")
            return
        }
        print("guard let: " + nick + String(age))
    }
    
}

