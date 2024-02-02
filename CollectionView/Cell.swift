//
//  Cell.swift
//  CollectionView
//
//  Created by Егор Дмитриев on 30.01.2024.
//

import UIKit

class Cell: UICollectionViewCell {
    
    @IBOutlet weak var temperatureimage: UIImageView!
    @IBOutlet weak var smileimage: UIImageView!
    
    func setTemperatureImage(tempName: String){
        temperatureimage.image = UIImage(named: tempName)
    }
    func setSmileImage(smileNane: String){
        smileimage.image = UIImage(named: smileNane)
    }
}
