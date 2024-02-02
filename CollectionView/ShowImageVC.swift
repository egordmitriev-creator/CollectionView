//
//  ShowImageVC.swift
//  CollectionView
//
//  Created by Егор Дмитриев on 30.01.2024.
//

import UIKit

class ShowImageVC: UIViewController {

    @IBOutlet weak var currentImage: UIImageView!
    
    var imageName: String!
    
    func setImageName(name: String) {
        imageName = name
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        currentImage.image = UIImage(named: imageName)
    }
}
