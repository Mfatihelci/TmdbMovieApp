//
//  PeopleViewController.swift
//  TmdbMovieApp
//
//  Created by Muhammed fatih Elçi on 19.12.2023.
//

import UIKit

class PeopleViewController: UIViewController {

    private let label: UILabel = {
       let label = UILabel()
        label.font = .boldSystemFont(ofSize: 20)
        label.text = "Popular People"
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }()
    
    private lazy var collectionView: UICollectionView = {
      let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(PeoplePageCollectionViewCell.self, forCellWithReuseIdentifier: PeoplePageCollectionViewCell.Identifier.path.rawValue)
        return collectionView
    }()
    
    let peoplePageProvider = PeoplePageCollectionProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initDelegate()
    }
    
    private func initDelegate() {
        view.addSubview(label)
        view.addSubview(collectionView)
        collectionView.delegate = peoplePageProvider
        collectionView.dataSource = peoplePageProvider
        makeLabel()
        makeCollectionView()
    }
}
extension PeopleViewController {
    private func makeLabel() {
        label.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(10)
            make.left.equalTo(view).offset(10)
            make.width.equalTo(200)
            make.height.equalTo(40)
        }
    }
    private func makeCollectionView() {
        collectionView.snp.makeConstraints { make in
            make.top.equalTo(label.snp.bottom).offset(0)
            make.left.equalTo(view).offset(10)
            make.right.equalTo(view).inset(10)
            make.bottom.equalTo(view).offset(0)
        }
    }
}
