//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by MEWO on 31.05.2021.
//

import UIKit

class ViewController: UIViewController {
    var isKhont = true
    @IBOutlet weak var chngLabel: UILabel!
    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        img.isUserInteractionEnabled = true
        let firstGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        img.addGestureRecognizer(firstGestureRecognizer)
    }
    @objc func changePic(){
        if isKhont == true{
            img.image = UIImage(named: "khont2")
            chngLabel.text =  "Gülen Khont"
            isKhont=false
        }else{
            img.image = UIImage(named: "khont")
            chngLabel.text = "Sinirli Khont"
            isKhont=true
        }
    }

}

