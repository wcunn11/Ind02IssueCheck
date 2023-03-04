//
//  ViewController.swift
//  Ind02_Cunningham_Will
//
//  Created by Meghan Cunningham on 3/1/23.
//

import UIKit
import Swift

class ViewController: UIViewController {
    
    @IBOutlet weak var picture1: UIImageView!
    @IBOutlet weak var picture2: UIImageView!
    @IBOutlet weak var picture3: UIImageView!
    @IBOutlet weak var picture4: UIImageView!
    @IBOutlet weak var picture5: UIImageView!
    @IBOutlet weak var picture6: UIImageView!
    @IBOutlet weak var picture7: UIImageView!
    @IBOutlet weak var picture8: UIImageView!
    @IBOutlet weak var picture9: UIImageView!
    @IBOutlet weak var picture10: UIImageView!
    @IBOutlet weak var picture11: UIImageView!
    @IBOutlet weak var picture12: UIImageView!
    @IBOutlet weak var picture13: UIImageView!
    @IBOutlet weak var picture14: UIImageView!
    @IBOutlet weak var picture15: UIImageView!
    @IBOutlet weak var picture16: UIImageView!
    @IBOutlet weak var picture17: UIImageView!
    @IBOutlet weak var picture18: UIImageView!
    @IBOutlet weak var picture19: UIImageView!
    @IBOutlet weak var picture20: UIImageView!
    @IBOutlet weak var fullImage: UIImageView!
    @IBOutlet weak var Showanswer: UIButton!
    @IBOutlet weak var Shuffle: UIButton!
    @IBOutlet weak var ShowA: UILabel!
    var isCheked = true
    var centers : [CGPoint] = [CGPoint]()
    var ocenters : [CGPoint] = [CGPoint]()
    
    var imagesArray : [UIImageView] = [UIImageView]()
    var starting = [CGPoint]()
    func getCenters() -> [CGPoint]{
        var xCen = 67.5
        var yCen = 146.5
        
        //getting an array of the centers
        for i in 1...5{
            for j in 1...4{
                centers.append(CGPoint(x: xCen, y:yCen))
                xCen = xCen + 93
            }
            yCen = yCen + 93
            xCen = 67.5
        }
        return centers
    }
    
    func getImages() -> [UIImageView]{
        
        imagesArray = [picture1, picture2, picture3, picture4, picture5, picture6, picture7, picture8, picture9, picture10, picture11, picture12, picture13, picture14, picture15,picture16,picture17,picture18,picture19,picture20]
        
        return imagesArray
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        for constraint in self.view.constraints {
            constraint.isActive = false
        }
        //calling the function
        fullImage.isHidden = true
        getCenters()
        getImages()
    }
    
    
    
    //TapGesture functions to move the board
    @IBAction func tapHandler(_ sender: UITapGestureRecognizer) {
        //functions for moving the tiles
        var tapCen = sender.view?.center
        left()
        right()
        up()
        down()
        
        func left(){
            var temp = tapCen
            var tempx = tapCen!.x - 93
            var tempy = tapCen!.y
            let a = CGPointMake(tapCen!.x-93, tapCen!.y)
            let b: CGPoint = picture1.center
            
            if(a == b){
                sender.view?.center = picture1.center
                picture1.center = tapCen!
            }
        }
        func right(){
            var temp = tapCen
            var tempx = tapCen!.x + 93
            var tempy = tapCen!.y
            let a = CGPointMake(tapCen!.x+93, tapCen!.y)
            let b: CGPoint = picture1.center
            
            if(a == b){
                sender.view?.center = picture1.center
                picture1.center = tapCen!
            }
        }
        func up(){
            var temp = tapCen
            var tempx = tapCen!.x
            var tempy = tapCen!.y + 93
            let a = CGPointMake(tapCen!.x, tapCen!.y + 93)
            let b: CGPoint = picture1.center
            
            if(a == b){
                sender.view?.center = picture1.center
                picture1.center = tapCen!
            }
        }
        func down(){
            var temp = tapCen
            var tempx = tapCen!.x
            var tempy = tapCen!.y - 93
            let a = CGPointMake(tapCen!.x, tapCen!.y - 93)
            let b: CGPoint = picture1.center
            
            if(a == b){
                sender.view?.center = picture1.center
                picture1.center = tapCen!
            }
        }
        
        
    }// end of tap gesture

        
    @IBAction func Showanswer(_ sender: UITapGestureRecognizer) {
        if(fullImage.isHidden == true){
            fullImage.isHidden = false
            Showanswer.setTitle("Hide Answer", for: .normal)
        }
        else{
            fullImage.isHidden = true
            Showanswer.setTitle("Show Answer", for: .normal)
        }
    }
    
    
    @IBAction func Shuffle(_ sender: Any) {
        for i in 0...24{
            
            //blank at top left
            if(picture1.center == centers[0]){
                var random = Int.random(in: 1...2)
                //right
                if(random == 1){
                    picture1.center = centers[1]
                    imagesArray[1].center = centers[0]
                    var temp = imagesArray[1]
                    imagesArray[1] = imagesArray[0]
                    imagesArray[0] = temp
                }//down
                if(random == 2){
                    picture1.center = centers[4]
                    imagesArray[4].center = centers[0]
                    var temp = imagesArray[4]
                    imagesArray[4] = imagesArray[0]
                    imagesArray[0] = temp
                }
            }
            
            //blank at top middle left
            //left
            if(picture1.center == centers[1]){
                var random = Int.random(in: 1...3)
                //left
                if(random == 1){
                    picture1.center = centers[0]
                    imagesArray[0].center = centers[1]
                    var temp = imagesArray[0]
                    imagesArray[0] = imagesArray[1]
                    imagesArray[1] = temp
                }
                //right
                if(random == 2){
                    picture1.center = centers[2]
                    imagesArray[2].center = centers[1]
                    var temp = imagesArray[2]
                    imagesArray[2] = imagesArray[1]
                    imagesArray[1] = temp
                }
                //down
                if(random == 3){
                    picture1.center = centers[5]
                    imagesArray[5].center = centers[1]
                    var temp = imagesArray[5]
                    imagesArray[5] = imagesArray[1]
                    imagesArray[1] = temp
                }
            }
            
            //blank at top middle right
            
            if(picture1.center == centers[2]){
                var random = Int.random(in: 1...3)
                //left
                if(random == 1){
                    picture1.center = centers[1]
                    imagesArray[1].center = centers[2]
                    var temp = imagesArray[1]
                    imagesArray[1] = imagesArray[2]
                    imagesArray[2] = temp
                }
                //right
                if(random == 2){
                    picture1.center = centers[3]
                    imagesArray[3].center = centers[2]
                    var temp = imagesArray[3]
                    imagesArray[3] = imagesArray[2]
                    imagesArray[2] = temp
                }
                //down
                if(random == 3){
                    picture1.center = centers[6]
                    imagesArray[6].center = centers[2]
                    var temp = imagesArray[6]
                    imagesArray[6] = imagesArray[2]
                    imagesArray[2] = temp
                }
            }
            
            //Blank at top right
            if(picture1.center == centers[3]){
                var random = Int.random(in: 1...2)
                //left
                if(random == 1){
                    picture1.center = centers[2]
                    imagesArray[2].center = centers[3]
                    var temp = imagesArray[2]
                    imagesArray[2] = imagesArray[3]
                    imagesArray[3] = temp
                }
                //down
                if(random == 2){
                    picture1.center = centers[7]
                    imagesArray[7].center = centers[3]
                    var temp = imagesArray[7]
                    imagesArray[7] = imagesArray[3]
                    imagesArray[3] = temp
                }
            }
            
            //begin on second row
            if(picture1.center == centers[4]){
                var random = Int.random(in: 2...4)
                //right
                if(random == 2){
                    picture1.center = centers[5]
                    imagesArray[5].center = centers[4]
                    var temp = imagesArray[5]
                    imagesArray[5] = imagesArray[4]
                    imagesArray[4] = temp
                }
                //down
                if(random == 3){
                    picture1.center = centers[8]
                    imagesArray[8].center = centers[4]
                    var temp = imagesArray[8]
                    imagesArray[8] = imagesArray[4]
                    imagesArray[4] = temp
                }
                //up
                if(random == 4){
                    picture1.center = centers[0]
                    imagesArray[0].center = centers[4]
                    var temp = imagesArray[0]
                    imagesArray[0] = imagesArray[4]
                    imagesArray[4] = temp
                }
            }
            
            //begging second element of second row
            if(picture1.center == centers[5]){
                var random = Int.random(in: 1...4)
                //left
                if(random == 1){
                    picture1.center = centers[4]
                    imagesArray[4].center = centers[5]
                    var temp = imagesArray[4]
                    imagesArray[4] = imagesArray[5]
                    imagesArray[5] = temp
                }
                //right
                if(random==2){
                    picture1.center = centers[6]
                    imagesArray[6].center = centers[5]
                    var temp = imagesArray[6]
                    imagesArray[6] = imagesArray[5]
                    imagesArray[5] = temp
                }
                //down
                if(random == 3){
                    picture1.center = centers[9]
                    imagesArray[9].center = centers[5]
                    var temp = imagesArray[9]
                    imagesArray[9] = imagesArray[5]
                    imagesArray[5] = temp
                }
                //up
                if(random == 4){
                    picture1.center = centers[1]
                    imagesArray[1].center = centers[5]
                    var temp = imagesArray[1]
                    imagesArray[1] = imagesArray[5]
                    imagesArray[5] = temp
                }
            }
            
            //begging third element of second row
            if(picture1.center == centers[6]){
                var random = Int.random(in: 1...4)
                //left
                if(random == 1){
                    picture1.center = centers[7]
                    imagesArray[7].center = centers[6]
                    var temp = imagesArray[7]
                    imagesArray[7] = imagesArray[6]
                    imagesArray[6] = temp
                }
                //right
                if(random==2){
                    picture1.center = centers[5]
                    imagesArray[5].center = centers[6]
                    var temp = imagesArray[5]
                    imagesArray[5] = imagesArray[6]
                    imagesArray[6] = temp
                }
                //down
                if(random == 3){
                    picture1.center = centers[10]
                    imagesArray[10].center = centers[6]
                    var temp = imagesArray[10]
                    imagesArray[10] = imagesArray[6]
                    imagesArray[6] = temp
                }
                //up
                if(random == 4){
                    picture1.center = centers[2]
                    imagesArray[2].center = centers[6]
                    var temp = imagesArray[2]
                    imagesArray[2] = imagesArray[6]
                    imagesArray[6] = temp
                }
            }
            
            //fourth element of second row
            if(picture1.center == centers[7]){
                var random = Int.random(in: 1...3)
                //left
                if(random == 1){
                    picture1.center = centers[6]
                    imagesArray[6].center = centers[7]
                    var temp = imagesArray[6]
                    imagesArray[6] = imagesArray[7]
                    imagesArray[7] = temp
                }
                //up
                if(random==2){
                    picture1.center = centers[3]
                    imagesArray[3].center = centers[7]
                    var temp = imagesArray[3]
                    imagesArray[3] = imagesArray[7]
                    imagesArray[7] = temp
                }
                //down
                if(random == 3){
                    picture1.center = centers[11]
                    imagesArray[11].center = centers[7]
                    var temp = imagesArray[11]
                    imagesArray[11] = imagesArray[7]
                    imagesArray[7] = temp
                }
            }
            //third row first element
            if(picture1.center == centers[8]){
                var random = Int.random(in: 1...3)
                //up
                if(random == 1){
                    picture1.center = centers[4]
                    imagesArray[4].center = centers[8]
                    var temp = imagesArray[4]
                    imagesArray[4] = imagesArray[8]
                    imagesArray[8] = temp
                }
                //down
                if(random==2){
                    picture1.center = centers[12]
                    imagesArray[12].center = centers[8]
                    var temp = imagesArray[12]
                    imagesArray[12] = imagesArray[8]
                    imagesArray[8] = temp
                }
                //right
                if(random == 3){
                    picture1.center = centers[9]
                    imagesArray[9].center = centers[8]
                    var temp = imagesArray[9]
                    imagesArray[9] = imagesArray[8]
                    imagesArray[8] = temp
                }
            }
            //second element of third row
            if(picture1.center == centers[9]){
                var random = Int.random(in: 1...4)
                //left
                if(random == 1){
                    picture1.center = centers[8]
                    imagesArray[8].center = centers[9]
                    var temp = imagesArray[8]
                    imagesArray[8] = imagesArray[9]
                    imagesArray[9] = temp
                }
                //right
                if(random==2){
                    picture1.center = centers[10]
                    imagesArray[10].center = centers[9]
                    var temp = imagesArray[10]
                    imagesArray[10] = imagesArray[9]
                    imagesArray[9] = temp
                }
                //down
                if(random == 3){
                    picture1.center = centers[13]
                    imagesArray[13].center = centers[9]
                    var temp = imagesArray[13]
                    imagesArray[13] = imagesArray[9]
                    imagesArray[9] = temp
                }
                //up
                if(random == 4){
                    picture1.center = centers[5]
                    imagesArray[5].center = centers[9]
                    var temp = imagesArray[5]
                    imagesArray[5] = imagesArray[9]
                    imagesArray[9] = temp
                }
            }
            
            //third element of third row
            if(picture1.center == centers[10]){
                var random = Int.random(in: 1...4)
                //left
                if(random == 1){
                    picture1.center = centers[9]
                    imagesArray[9].center = centers[10]
                    var temp = imagesArray[9]
                    imagesArray[9] = imagesArray[10]
                    imagesArray[10] = temp
                }
                //right
                if(random==2){
                    picture1.center = centers[11]
                    imagesArray[11].center = centers[10]
                    var temp = imagesArray[11]
                    imagesArray[11] = imagesArray[10]
                    imagesArray[10] = temp
                }
                //down
                if(random == 3){
                    picture1.center = centers[14]
                    imagesArray[14].center = centers[10]
                    var temp = imagesArray[14]
                    imagesArray[14] = imagesArray[10]
                    imagesArray[10] = temp
                }
                //up
                if(random == 4){
                    picture1.center = centers[6]
                    imagesArray[6].center = centers[10]
                    var temp = imagesArray[6]
                    imagesArray[6] = imagesArray[10]
                    imagesArray[10] = temp
                }
            }
            //last element of third
            if(picture1.center == centers[11]){
                var random = Int.random(in: 1...3)
                //left
                if(random == 1){
                    picture1.center = centers[10]
                    imagesArray[10].center = centers[11]
                    var temp = imagesArray[10]
                    imagesArray[10] = imagesArray[11]
                    imagesArray[11] = temp
                }
                //up
                if(random==2){
                    picture1.center = centers[7]
                    imagesArray[7].center = centers[11]
                    var temp = imagesArray[7]
                    imagesArray[7] = imagesArray[11]
                    imagesArray[11] = temp
                }
                //down
                if(random == 3){
                    picture1.center = centers[15]
                    imagesArray[15].center = centers[11]
                    var temp = imagesArray[15]
                    imagesArray[15] = imagesArray[11]
                    imagesArray[11] = temp
                }
            }
            
            //fourth row first element
            if(picture1.center == centers[12]){
                var random = Int.random(in: 1...3)
                //up
                if(random == 1){
                    picture1.center = centers[8]
                    imagesArray[8].center = centers[12]
                    var temp = imagesArray[8]
                    imagesArray[8] = imagesArray[12]
                    imagesArray[12] = temp
                }
                //down
                if(random==2){
                    picture1.center = centers[16]
                    imagesArray[16].center = centers[12]
                    var temp = imagesArray[16]
                    imagesArray[16] = imagesArray[12]
                    imagesArray[12] = temp
                }
                //right
                if(random == 3){
                    picture1.center = centers[13]
                    imagesArray[13].center = centers[12]
                    var temp = imagesArray[13]
                    imagesArray[13] = imagesArray[12]
                    imagesArray[12] = temp
                }
            }
            //second element of fourth row
            if(picture1.center == centers[13]){
                var random = Int.random(in: 1...4)
                //left
                if(random == 1){
                    picture1.center = centers[12]
                    imagesArray[12].center = centers[13]
                    var temp = imagesArray[12]
                    imagesArray[12] = imagesArray[13]
                    imagesArray[13] = temp
                }
                //right
                if(random==2){
                    picture1.center = centers[14]
                    imagesArray[14].center = centers[13]
                    var temp = imagesArray[14]
                    imagesArray[14] = imagesArray[13]
                    imagesArray[13] = temp
                }
                //down
                if(random == 3){
                    picture1.center = centers[18]
                    imagesArray[18].center = centers[13]
                    var temp = imagesArray[18]
                    imagesArray[18] = imagesArray[13]
                    imagesArray[13] = temp
                }
                //up
                if(random == 4){
                    picture1.center = centers[10]
                    imagesArray[10].center = centers[13]
                    var temp = imagesArray[10]
                    imagesArray[10] = imagesArray[13]
                    imagesArray[13] = temp
                }
            }
            
            //third element of fourth row
            if(picture1.center == centers[14]){
                var random = Int.random(in: 1...4)
                //left
                if(random == 1){
                    picture1.center = centers[13]
                    imagesArray[13].center = centers[14]
                    var temp = imagesArray[13]
                    imagesArray[13] = imagesArray[14]
                    imagesArray[14] = temp
                }
                //right
                if(random==2){
                    picture1.center = centers[15]
                    imagesArray[15].center = centers[14]
                    var temp = imagesArray[15]
                    imagesArray[15] = imagesArray[14]
                    imagesArray[14] = temp
                }
                //down
                if(random == 3){
                    picture1.center = centers[18]
                    imagesArray[18].center = centers[14]
                    var temp = imagesArray[18]
                    imagesArray[18] = imagesArray[14]
                    imagesArray[14] = temp
                }
                //up
                if(random == 4){
                    picture1.center = centers[10]
                    imagesArray[10].center = centers[14]
                    var temp = imagesArray[10]
                    imagesArray[10] = imagesArray[14]
                    imagesArray[14] = temp
                }
            }
            
            //last element of fourth
            if(picture1.center == centers[15]){
                var random = Int.random(in: 1...3)
                //left
                if(random == 1){
                    picture1.center = centers[14]
                    imagesArray[14].center = centers[15]
                    var temp = imagesArray[14]
                    imagesArray[14] = imagesArray[15]
                    imagesArray[15] = temp
                }
                //up
                if(random==2){
                    picture1.center = centers[11]
                    imagesArray[11].center = centers[15]
                    var temp = imagesArray[11]
                    imagesArray[11] = imagesArray[15]
                    imagesArray[15] = temp
                }
                //down
                if(random == 3){
                    picture1.center = centers[19]
                    imagesArray[19].center = centers[15]
                    var temp = imagesArray[19]
                    imagesArray[19] = imagesArray[15]
                    imagesArray[15] = temp
                }
            }
            
            //blank at bottom left
            if(picture1.center == centers[16]){
                var random = Int.random(in: 1...2)
                //right
                if(random == 1){
                    picture1.center = centers[17]
                    imagesArray[17].center = centers[16]
                    var temp = imagesArray[17]
                    imagesArray[17] = imagesArray[16]
                    imagesArray[16] = temp
                }//up
                if(random == 2){
                    picture1.center = centers[12]
                    imagesArray[12].center = centers[16]
                    var temp = imagesArray[12]
                    imagesArray[12] = imagesArray[16]
                    imagesArray[16] = temp
                }
            }
            
            //second last row
            if(picture1.center == centers[17]){
                var random = Int.random(in: 1...3)
                //right
                if(random == 1){
                    picture1.center = centers[18]
                    imagesArray[18].center = centers[17]
                    var temp = imagesArray[18]
                    imagesArray[18] = imagesArray[17]
                    imagesArray[17] = temp
                }//up
                if(random == 2){
                    picture1.center = centers[13]
                    imagesArray[13].center = centers[17]
                    var temp = imagesArray[13]
                    imagesArray[13] = imagesArray[17]
                    imagesArray[17] = temp
                }
                //left
                if(random == 3){
                    picture1.center = centers[16]
                    imagesArray[16].center = centers[17]
                    var temp = imagesArray[16]
                    imagesArray[16] = imagesArray[17]
                    imagesArray[17] = temp
                }
            }
            
            
            //third last row
            if(picture1.center == centers[18]){
                var random = Int.random(in: 1...3)
                //right
                if(random == 1){
                    picture1.center = centers[19]
                    imagesArray[19].center = centers[18]
                    var temp = imagesArray[19]
                    imagesArray[19] = imagesArray[18]
                    imagesArray[18] = temp
                }//up
                if(random == 2){
                    picture1.center = centers[14]
                    imagesArray[14].center = centers[18]
                    var temp = imagesArray[14]
                    imagesArray[14] = imagesArray[18]
                    imagesArray[18] = temp
                }
                //left
                if(random == 3){
                    picture1.center = centers[17]
                    imagesArray[17].center = centers[18]
                    var temp = imagesArray[17]
                    imagesArray[17] = imagesArray[18]
                    imagesArray[18] = temp
                }
            }
            
            //blank at bottom right
            if(picture1.center == centers[19]){
                var random = Int.random(in: 1...2)
                //left
                if(random == 1){
                    picture1.center = centers[18]
                    imagesArray[18].center = centers[19]
                    var temp = imagesArray[18]
                    imagesArray[18] = imagesArray[19]
                    imagesArray[19] = temp
                }//up
                if(random == 2){
                    picture1.center = centers[15]
                    imagesArray[15].center = centers[19]
                    var temp = imagesArray[15]
                    imagesArray[15] = imagesArray[19]
                    imagesArray[19] = temp
                }
            }
        }
    }//end of shuffle
}//end of main
