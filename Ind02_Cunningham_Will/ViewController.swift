//
//  ViewController.swift
//  Ind02_Cunningham_Will
//
//  Created by Meghan Cunningham on 3/1/23.
//

import UIKit
import Swift

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var buttons: UIButton!
    var centers : [CGPoint] = [CGPoint]()
    var imagesArray : [UIImage] = [UIImage]()
    var starting = [CGPoint]()
    func getCenters() -> [CGPoint]{
        var xCen = 67.5
        var yCen = 146.5
        
        //for some reason my nested loops didn't work
        for i in 1...4{
            for j in 1...5{
                centers.append(CGPoint(x: xCen, y:yCen))
                xCen = xCen + 93
            }
            yCen = yCen + 93
            xCen = 67.5
        }
        print(centers)
        return centers
    }
    /*func getImages() -> [UIImage]{
     for i in 1...20{
     let imagename = "picture\(i)"
     imagesArray.append(UIImage(#imageLiteral(named: "picture1")))
     
     }
     print(imagesArray)
     return imagesArray*/
     //}
    
    override func viewDidLoad(){
        super.viewDidLoad()
        for constraint in self.view.constraints {
            constraint.isActive = false
        }
        getCenters()
        //getImages()
        //to have starting values stored
    }
    
    
    
    //TapGesture functions
    @IBAction func picture2(_ sender: UITapGestureRecognizer) {
        //functions for moving the tiles
        var tapCen = sender.view?.center
        print(tapCen)
        
        func left(a: Int){ CGPointMake(tapCen!.x - 93, tapCen!.y)
            if(tapCen!.x - 93 == centers[0].x){
                sender.accessibilityPath?.move(to: CGPoint(x: centers[0].x, y: centers[0].y))
            }
        }
        var right = CGPointMake(tapCen!.x + 93, tapCen!.y)
        var up = CGPointMake(tapCen!.x, tapCen!.y + 93)
        var down = CGPointMake(tapCen!.x, tapCen!.y - 93)
        
        var getTag = sender.view?.tag
        print(getTag)
        
        /* func checkup(a: Int){
         print("checking")
         var b = 0;
         b = a - 1
         centers[b].y += 93
         if(centers[b] == centers[0]){
         centers[0].y -= 93
         var temp = centers[0].x
         var temp2 = centers[0].y
         var temp3 = centers[b].x
         var temp4 = centers[b].y
         let rect = CGPoint(x: temp, y: temp2)
         let rect2 = CGPoint(x: temp3, y: temp4)
         UIImage(named: "picture2")?.accessibilityPath?.move(to: rect)
         UIImage(named: "picture1")?.accessibilityPath?.move(to: rect2)
         }
         else{centers[b].y -= 93}
         }
         //down function
         func checkdown(a: Int){
         print("checking")
         var b = 0;
         b = a - 1
         centers[b].y -= 93
         if(centers[b] == centers[0]){
         centers[0].y += 93
         var temp = centers[0].x
         var temp2 = centers[0].y
         var temp3 = centers[b].x
         var temp4 = centers[b].y
         let rect = CGPoint(x: temp, y: temp2)
         let rect2 = CGPoint(x: temp3, y: temp4)
         UIImage(named: "picture2")?.accessibilityPath?.move(to: rect)
         UIImage(named: "picture1")?.accessibilityPath?.move(to: rect2)
         }
         else{centers[b].y += 93}
         }*/
        //left function
        /*func checkleft(a: Int){
         print("checking")
         print(centers[a])
         }
         else{centers[b].x += 93}*/
        
        //right function
        /* func checkright(a: Int){
         print("checking")
         var b = 0;
         b = a - 1
         centers[b].x += 93
         if(centers[b] == centers[0]){
         centers[1].x -= 93
         var temp = centers[0].x
         var temp2 = centers[0].y
         var temp3 = centers[b].x
         var temp4 = centers[b].y
         let rect = CGPoint(x: temp, y: temp2)
         let rect2 = CGPoint(x: temp3, y: temp4)
         UIImage(named: "picture2")?.accessibilityPath?.move(to: rect)
         UIImage(named: "picture1")?.accessibilityPath?.move(to: rect2)
         }
         else{centers[b].x -= 93}
         }*/
        //grabbing the tag to always keep track of the tiles
        
        if(getTag == 2){
            //checkup(a: 2)
            //checkdown(a: 2)
            left(a: 2)
            //checkright(a: 2)
        }
    }
        
        @IBAction func Button(_ sender: UITapGestureRecognizer) {
            
        }
    }
    
