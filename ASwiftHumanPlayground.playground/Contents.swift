//: Playground - noun: a place where people can play

import UIKit

class BodyPart {
    
}

class Arm: BodyPart {
    
    let armWorks = true
    let elbow = Elbow()
    let hand = Hand()
    
    func Wave() {
        
    }
    
    func Lift() {
        
    }
    
}

class Leg: BodyPart {
    
    let legWorks = true
    let knee = Knee()
    let foot = Foot()
    
    func walk() {
        
    }
    
    func kick() {
        
    }
    
    func run(){
        
    }
    
}

class Hand: BodyPart {
    
    let indexFinger = Finger()
    let pinkyFinger = Finger()
    let thumbFinger = Finger()
    let ringFinger = Finger()
    let middleFinger = Finger()
    
    func grip() {
        
        
    }
    
    func slap() {
    
        
    }
    
}

class Finger: BodyPart {
    
    let hasFingerNail = true
    let fingerNailLength = 2
    
    func bend() {
        
    }
    
    func point() {
        
    }
    
}

class Neck: BodyPart {
    
    let canBend = true
    let canRotate = true
    
    func bend() {
        
    }
    
    func rotate(){
        
    }
}

class Eye: BodyPart {
    
    let eyeColor = UIColor.brownColor()
    let canSee = true
    
    func blink(){
        
    }
    
    func focus() {
        
    }
    
}

class Ear: BodyPart {
    
    let canHear = true
    let hasEarWax = true
    
    func listen() {
        
    }
    
    func wiggle() {
        
    }
    
}

class Elbow: BodyPart {
    
    let canBend = true
    let canRotate = true
    
    func bend() {
        
        
    }
    
    func rotate() {
        
    }
    
}

class Knee: BodyPart {
    
    let canBend = true
    let canRotate = true
    
    func bend() {
        
        
    }
    
    func rotate() {
        
    }
    
}

class Foot: BodyPart {
    
    let haveFoot = true
    let marketToe = Toe()
    let homeToe = Toe()
    let roastBeefToe = Toe()
    let noneToe = Toe()
    let weweToe = Toe()
    
    func shake() {
        
    }
    
    func push() {
        
    }
    
}

class Toe: BodyPart {
    
    let hasToenail = true
    let toeNailLength = 5
    
    func bend() {
        
    }
    
    func grip() {
        
    }
    
}

class Torso: BodyPart {
    let rightArm = Arm()
    let leftArm = Arm()
    let rightLeg = Leg()
    let leftLeg = Leg()
    let neck = Neck()
    let head = Head()
    
}

class Head: BodyPart {
    
    let leftEar = Ear()
    let rightEar = Ear()
    let leftEye = Eye()
    let rightEye = Eye()
    
}




