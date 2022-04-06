//
//  ViewController.swift
//  GestureRecogrineApp
//
//  Created by Melih Yuvacı on 6.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    var isJames = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled=true
        let gestureRecognizer=UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }
    @objc func changePic(){
        
        if isJames == true{
            imageView.image = UIImage(named: "Kobe")
            myLabel.text="Kobe Braynt"
            isJames=false
            
        }else {
            imageView.image = UIImage(named: "Lebron")
            myLabel.text="Lebron James"
            isJames = true
            
        }
        
    }
    
}
