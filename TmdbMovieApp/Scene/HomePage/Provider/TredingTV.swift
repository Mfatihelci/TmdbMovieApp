//
//  TredingTV.swift
//  TmdbMovieApp
//
//  Created by Muhammed fatih Elçi on 22.12.2023.
//

import UIKit

class TelevisionListProvider: NSObject {
    
}
extension TelevisionListProvider: UICollectionViewDelegateFlowLayout,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = UICollectionViewCell()
        return cell
    }
}
