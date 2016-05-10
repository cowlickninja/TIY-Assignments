//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


print ("hello world")

print("this"); print("that")

let x = 3
let z: Float = 5
let a: Int = 7

var y = 5
y += 3


//: Data types in Swift

let myString: String = "hello"
let someDouble: Double = 3.0
let myArray = [1, 2, 3]
let myDict = ["a": 5, "b": 10]

//: Won't work
//myString = 5
//myArray = ["a", "b"]

//: Types are never automaccitally converted

let someOtherDouble: Double = 3

let myInt = 10
var myDouble = 10.0
myDouble = Double(myInt)

//: String interpolation and concatenation

"this" + " " + "that"

let first = "hello"
let last = "world"
"\(first) \(last)"

//: Literals , just a value


//: Operators

let value = (3 + 5) * 10 / 20
value.successor()


//: Collections: Arrays

var myOtherArray = [1, 2, 3]
myOtherArray[1]
myOtherArray[0] = 10
myOtherArray
myOtherArray.count
myOtherArray.append(3)
myOtherArray.last

//: Collections: Dictionaries

var myNewDict = ["a": [5,6], "b": [10,11]]
myNewDict["a"]
myNewDict["a"] = []
myNewDict
myNewDict["a"] = nil

let dictValue = myNewDict["b"]


//: for loop

for item in myOtherArray {
    print(item)
}

//: switches

switch myOtherArray[1] {
case 1:
    print("it was one!")
case 2, 3:
    print("it was small")
case 4...11:
    print("it was several")
default:
    print("shrug emoji")
}

//: class

class myClass: NSObject {
    var myInteger: Int
    
    init(someInteger: Int) {
        myInteger = someInteger
    }
}

let myObject = myClass(someInteger: 3)
myObject.myInteger = 5

//: struct

struct MyStruct {
    var myInteger: Int
    var object: myClass
}

let myStructValue = MyStruct(myInteger: 3, object: myClass(someInteger: 10))

//myStructValue.myInteger = 5
//myStructValue.object = MyClass(someInteger: 11)
myStructValue.object.myInteger = 100

//: enum

enum Result {
    case Success(T)
    case Failure
    case NotOnline
}

let enumValue =  Result.Success("hello")

switch enumValue {
case .Success(let object):
    print (object)
case .Failure:
    print ("nope")
case .NotOnline:
    print("what's the wifi password?")
}

//: optionals have to be one or the other

enum MyOptional<T> {
    case Some(T)
    case None
}

let optionalInteger = MyOptional.Some(5)

switch optionalInteger {
case .Some(let integer):
    print(integer)
case .None:
    print("nil!")
}



var number = 3
var optNumber: Int? = 3
//number = nil
optNumber = nil
optNumber = .None
//nil is really .None or Optional.None, but Swift is cool and shows .None also called syntaxical sugar (instructor term)

let myView = UIView()
myView.backgroundColor = .blackColor() // understands this is UIColor.blackColor()


var string = "hi"
var optString: Optional<String> = "bye"

if optString != nil {
    //do this
}else{
    //do that
}
//: functions
// OLD WAY, OBJ-C
- (void)doAThingWithFirst:(NSString *)first andSecond:(NSString *)second;

// NEW WAY, SWIFT
func doAThingWithFirst(first: String, second: String) -> Int {
    print(first)
    print(second)
    print("I'm doing the thing!")
    
    return 3
}


let results = doAThingWithFirst("one", andSecond: "two")
doAThingWithFirst("one", andSecond: "two")




