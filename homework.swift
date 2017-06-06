//: Playground - noun: a place where people can play
 
import UIKit
import Foundation
 
 
var s = [String:Bool]()
var i:Int = 0
if let bundlePath: String = Bundle.main.path(forResource: "students", ofType: "json"){
do{
        let jsonData = try NSData(contentsOfFile: bundlePath, options: NSData.ReadingOptions.mappedIfSafe)
        do{
            let jsonResult: NSArray = try JSONSerialization.jsonObject(with: jsonData as Data, options:JSONSerialization.ReadingOptions.mutableContainers) as! NSArray
            
            for dict in jsonResult.dictionaryWithValues(forKeys: ["name"]) as NSDictionary{
                print(dict)
            }
        }catch{}
    }catch{}
}
else{
    print("no file in the path~!")
}