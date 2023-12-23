//
//  PeoplePageCollectionProvider.swift
//  TmdbMovieApp
//
//  Created by Muhammed fatih Elçi on 23.12.2023.
//

import UIKit

class PeoplePageCollectionProvider: NSObject {
    
    var colums: CGFloat = 2
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewWidht = collectionView.bounds.width
        let flowLayout = collectionViewLayout as! UICollectionViewFlowLayout
        let spaceBeetwenCells = flowLayout.minimumInteritemSpacing * (colums - 1)
        let adjustedWith = collectionViewWidht - spaceBeetwenCells
        let width: CGFloat = floor(adjustedWith / colums)
        let height: CGFloat = 200
        return CGSize(width: width, height: height)
    }
    
}
extension PeoplePageCollectionProvider: UICollectionViewDelegateFlowLayout,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PeoplePageCollectionViewCell.Identifier.path.rawValue, for: indexPath) as? PeoplePageCollectionViewCell else { return UICollectionViewCell()
        }
        cell.saveModel()
        cell.layer.borderWidth = 0.5
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.cornerRadius = 12
        cell.clipsToBounds = true
        return cell
    }
}

