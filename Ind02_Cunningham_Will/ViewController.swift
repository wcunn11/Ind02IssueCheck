//
//  ViewController.swift
//  Ind02_Cunningham_Will
//
//  Created by Meghan Cunningham on 3/1/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var centers = [CGPoint]()
        
        var xCen = 56.5
        var yCen = 146.5
        
        for i in 1...4{
            centers.append(CGPoint(x: xCen, y:yCen))
            xCen = xCen + 93
        }
        yCen = yCen + 93
        xCen = 56.5
        for i in 1...4{
            centers.append(CGPoint(x: xCen, y:yCen))
            xCen = xCen + 93
        }
        yCen = yCen + 93
        xCen = 56.5
        for i in 1...4{
            centers.append(CGPoint(x: xCen, y:yCen))
            xCen = xCen + 93
        }
        yCen = yCen + 93
        xCen = 56.5
        for i in 1...4{
            centers.append(CGPoint(x: xCen, y:yCen))
            xCen = xCen + 93
        }
        yCen = yCen + 93
        xCen = 56.5
        for i in 1...4{
            centers.append(CGPoint(x: xCen, y:yCen))
            xCen = xCen + 93
        }
            
    }
    
    @IBAction func picture2(_ sender: UITapGestureRecognizer) {
        print("2")
    }
    
    @IBAction func picture4(_ sender: UITapGestureRecognizer) {
        print("4")
    }
    @IBAction func picture3(_ sender: UITapGestureRecognizer) {
        print("3")
    }
    
    @IBAction func picture5(_ sender: UITapGestureRecognizer) {
        print("5")
    }
    
    @IBAction func picture6(_ sender: UITapGestureRecognizer) {
        print("6")
    }
    
    @IBAction func picture7(_ sender: UITapGestureRecognizer) {
        print("7")
    }
    
    @IBAction func picture8(_ sender: UITapGestureRecognizer) {
        print("8")
    }
    
    @IBAction func picture9(_ sender: UITapGestureRecognizer) {
        print("9")
    }
    
    @IBAction func picture10(_ sender: UITapGestureRecognizer) {
        print("10")
    }
    
    @IBAction func picture11(_ sender: UITapGestureRecognizer) {
        print("11")
    }
    
    @IBAction func picture12(_ sender: UITapGestureRecognizer) {
        print("12")
    }
    
    @IBAction func picture13(_ sender: UITapGestureRecognizer) {
        print("13")
    }
    
    @IBAction func picture14(_ sender: UITapGestureRecognizer) {
        print("14")
    }
    
    @IBAction func picture15(_ sender: UITapGestureRecognizer) {
        print("15")
    }
    
    @IBAction func picture16(_ sender: UITapGestureRecognizer) {
        print("16")
    }
    
    @IBAction func picture17(_ sender: UITapGestureRecognizer) {
        print("17")
    }
    
    @IBAction func picture18(_ sender: UITapGestureRecognizer) {
        print("18")
    }
    
    @IBAction func picture19(_ sender: UITapGestureRecognizer) {
        print("19")
    }
    
    @IBAction func picture20(_ sender: UITapGestureRecognizer) {
        print("20")
    }
    @IBAction func Shuffle(_ sender: UIButton) {
        
    }
    
    @IBAction func shuffle(_ sender: Any) {
        UIImage(data: ("Image View"))
    }
}





