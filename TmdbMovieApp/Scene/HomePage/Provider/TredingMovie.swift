//
//  TredingMovie.swift
//  TmdbMovieApp
//
//  Created by Muhammed fatih Elçi on 22.12.2023.
//

import UIKit

class MovieListProvider: NSObject {
    
}
extension MovieListProvider: UICollectionViewDelegateFlowLayout,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = UICollectionViewCell()
        return cell
    }
}
