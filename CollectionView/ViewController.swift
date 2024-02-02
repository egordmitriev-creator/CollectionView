//
//  ViewController.swift
//  CollectionView
//
//  Created by Егор Дмитриев on 30.01.2024.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionViewOne: UICollectionView!
    @IBOutlet weak var collectionViewTwo: UICollectionView!
    
    let arrayTenperature = ["temp.green", "temp.blackGreen", "temp.lightYellow", "temp.darkYellow", "temp.red"]
    let arraySmile = ["favorite", "nice", "routine", "notPleasant", "bad", "hate"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewOne.delegate = self
        collectionViewOne.dataSource = self
        collectionViewTwo.delegate = self
        collectionViewTwo.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "ShowImageVC") as? ShowImageVC else { return }
        var currentSelectedImage: String!
        
        if collectionView == collectionViewOne {
            currentSelectedImage = arrayTenperature[indexPath.row]
        }
        
        if collectionView == collectionViewTwo {
            currentSelectedImage = arraySmile[indexPath.row]
        }
        
        vc.setImageName(name: currentSelectedImage)
        
        present(vc, animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionViewOne {
            return arrayTenperature.count
        }
        
        if collectionView == collectionViewTwo {
            return arraySmile.count
        }
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == collectionViewOne {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellOne", for: indexPath) as? Cell {
                let imageName = arrayTenperature[indexPath.row]
                cell.setTemperatureImage(tempName: imageName)
                return cell
            }
        }
        
        if collectionView == collectionViewTwo {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellTwo", for: indexPath) as? Cell {
                let imageName = arraySmile[indexPath.row]
                cell.setSmileImage(smileNane: imageName)
                return cell
            }
        }
        
        return UICollectionViewCell()
    }
}

