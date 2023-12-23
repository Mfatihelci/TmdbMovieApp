//
//  PeoplePageCollectionViewCell.swift
//  TmdbMovieApp
//
//  Created by Muhammed fatih Elçi on 23.12.2023.
//

import UIKit
import SnapKit

class PeoplePageCollectionViewCell: UICollectionViewCell {
    private lazy var image: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 15
        image.layer.masksToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .white
        contentView.addSubview(image)
        return image
    }()
    
    private lazy var name: UILabel = {
       let label = UILabel()
        label.font = .boldSystemFont(ofSize: 15)
        label.textColor = .black
        label.textAlignment = .center
        addSubview(label)
        return label
    }()
    
    private lazy var released: UILabel = {
       let label = UILabel()
        label.font = .boldSystemFont(ofSize: 15)
        label.textColor = .black
        label.textAlignment = .center
        addSubview(label)
        return label
    }()
    
    enum Identifier: String {
        case path = "Cell"
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        saveModel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        makeName()
        makeImage()
        makeReleased()
    }
     func saveModel() {
        name.text = "ati"
        released.text = "tarih"
        image.image = UIImage(systemName: "heart.fill")
    }
}

extension PeoplePageCollectionViewCell {
    private func makeImage() {
        image.snp.makeConstraints { make in
            make.top.equalTo(contentView).offset(15)
            make.left.equalTo(contentView).offset(10)
            make.right.equalTo(contentView).inset(10)
            make.height.equalTo(140)
        }
    }
    private func makeName() {
        name.snp.makeConstraints { make in
            make.top.equalTo(image.snp.bottom).offset(0)
            make.centerX.equalTo(image)
            make.width.equalTo(100)
            make.height.equalTo(20)
        }
    }
    private func makeReleased() {
        released.snp.makeConstraints { make in
            make.top.equalTo(name.snp.bottom).offset(0)
            make.centerX.equalTo(name)
            make.width.equalTo(100)
            make.height.equalTo(20)
        }
    }
}
