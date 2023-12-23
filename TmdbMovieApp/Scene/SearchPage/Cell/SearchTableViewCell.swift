//
//  SearchTableViewCell.swift
//  TmdbMovieApp
//
//  Created by Muhammed fatih Elçi on 23.12.2023.
//

import UIKit

class SearchTableViewCell: UITableViewCell {
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
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .black
        label.textAlignment = .left
        addSubview(label)
        return label
    }()
    
    private lazy var released: UILabel = {
       let label = UILabel()
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .black
        label.textAlignment = .left
        addSubview(label)
        return label
    }()
    
    enum Identifier: String {
        case path = "Cell"
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
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

extension SearchTableViewCell {
    private func makeImage() {
        image.snp.makeConstraints { make in
            make.top.equalTo(contentView).offset(0)
            make.left.equalTo(contentView).offset(10)
            make.height.equalTo(150)
            make.width.equalTo(150)
        }
    }
    private func makeName() {
        name.snp.makeConstraints { make in
            make.top.equalTo(contentView).offset(20)
            make.left.equalTo(image.snp.right).offset(10)
            make.width.equalTo(100)
            make.width.equalTo(30)
        }
    }
    private func makeReleased() {
        released.snp.makeConstraints { make in
            make.top.equalTo(name.snp.bottom).offset(10)
            make.left.equalTo(image.snp.right).offset(10)
            make.height.equalTo(30)
            make.width.equalTo(100)
        }
    }
}
