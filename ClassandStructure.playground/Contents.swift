//: Playground - noun: a place where people can play

import UIKit

//creating structure

struct Resolution{
    var width = 0
    var height = 0
}

//creating class
class videoMod {
    var resolution = Resolution() // creating instance for structure
    var interlaced = false
    var frameRate = 0.0
    var name : String?
}

//creating instance for class and structure

 let videoOne = videoMod()
 let reso   = Resolution()

//Accessing properties

print("Resolution Width =\(reso.width),Resolution Height = \(reso.height)")
print("Resolution width of video mode = \(videoOne.resolution.width),Resolution height of video mode = \(videoOne.resolution.height) ")
//Assign new values to width

videoOne.resolution.width = 1250
print("Resolution width of video mode = \(videoOne.resolution.width)")

//memberwise initializer
// structure can do default memberwise initializer

var mmm = Resolution(width : 500 , height : 400)

print("Resolution width for mmm = \(mmm.width),Resolution height for mmm = \(mmm.height)")

//class instance do not receive default memberwise initializer
//Structure and Enumerations are values types

let hd = Resolution(width : 1920 , height : 1080)
var cinema = hd

print("For cinema")
print("Resolution width : \(cinema.width), Resolution height : \(cinema.height)")

cinema.width = 2048
cinema.height = 1024

print("Now , value of resolution for cinema")
print("Resolution width : \(cinema.width), Resolution height : \(cinema.height)")


print("For hd movie")
print("Resolution width : \(hd.width),Resolution height : \(hd.height)")

//Enumeration also value types

enum Compass {
    case north,east,west,south
}

var currentDirection = Compass.east
var rememberedDirection = currentDirection
rememberedDirection = .north
print(rememberedDirection)

//classes are references type

var tenEighty = videoMod()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

print("For tenEighty : \(tenEighty.resolution.width):\(tenEighty.resolution.height),\(tenEighty.interlaced),\(tenEighty.name),\(tenEighty.frameRate)")

var tenten = tenEighty
tenten.name = "1020i"
tenten.frameRate = 35.0
print("For tenten : \(tenten.resolution.width):\(tenten.resolution.height),\(tenten.interlaced),\(tenten.name)\(tenten.frameRate)")

print("For tenEighty : \(tenEighty.resolution.width):\(tenEighty.resolution.height),\(tenEighty.interlaced),\(tenEighty.name),\(tenEighty.frameRate)")


var testClassOne = videoMod()
testClassOne.resolution = Resolution(width: 200, height: 200)
testClassOne.interlaced = true
testClassOne.name = "chifan"
testClassOne.frameRate = 25.0

print("For Test class one")
print("Resolution width : \(testClassOne.resolution.width)/\(testClassOne.resolution.height),\(testClassOne.interlaced),\(testClassOne.name)\(testClassOne.frameRate)")


var testClassTwo = videoMod()
testClassTwo.resolution = Resolution(width: 300, height: 250)
testClassTwo.interlaced = false
testClassTwo.name = "fanguan"
testClassTwo.frameRate = 35.0

print("For Test class two")
print("Resolution width : \(testClassTwo.resolution.width)/\(testClassTwo.resolution.height),\(testClassTwo.interlaced),\(testClassTwo.name)\(testClassTwo.frameRate)")

//Identity Operators

if(tenten === tenEighty){
    print("These two instances are the same")
}

if(testClassOne === testClassTwo){
    print("These two instances are the same")
}else {
    print("These two instances are not the same")
}

//

struct Identity {
    var nrc : Int = 000000
    var passport : Int = 000000

}
class Student {
    var name : String?
    var age : Int?
    var address : String?
    var identity = Identity()
}


var stu1 = Student()
stu1.name = "SuSu"
stu1.age = 23
stu1.address = "Yangon"
stu1.identity.passport = 23417834

print("For Student 1 Object")
print("Name : \(stu1.name),Age : \(stu1.age), Address : \(stu1.address),Identity :\(stu1.identity.passport)")

