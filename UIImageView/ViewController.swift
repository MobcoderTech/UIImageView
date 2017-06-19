//
//  ViewController.swift
//  UIImageView
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView:UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var images: [UIImage] = []
//        for i in 1...2 {
//            images.append(UIImage(named: "c\(i)")!)
//        }
        myImageView.animationImages = images
        myImageView.animationDuration = 1.0
        myImageView.startAnimating()

        //-- All you need to circle the image
        myImageView.layer.borderWidth = 1
        myImageView.layer.masksToBounds = false
        myImageView.layer.borderColor = UIColor.black.cgColor
        myImageView.layer.cornerRadius = myImageView.frame.height/2
        myImageView.clipsToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func runAnimation (imgView: UIImageView, arrayPos: Int) {
        let timingArray = [7.0,10.0] //Durations of each
        let frameArray = [43,45]  //Frames for each
        var imgArray: Array<UIImage> = [] //Setup empty array

        for i in 1 ... frameArray[arrayPos] {
            //Fill empty array with images!!
            let imageToAdd = UIImage(named: "c\(i)")
            imgArray.append(imageToAdd!)
        }
        imgView.animationImages = imgArray
        imgView.animationDuration = timingArray[arrayPos]
        imgView.animationRepeatCount = 2
        imgView.startAnimating()
    }

}

