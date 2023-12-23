//
//  TelevisionPageCellTableViewCell.swift
//  TmdbMovieApp
//
//  Created by Muhammed fatih Elçi on 23.12.2023.
//

import UIKit
import SnapKit

class TelevisionPageCellTableViewCell: UITableViewCell {
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .black
        label.textAlignment = .left
        label.numberOfLines = 0
        contentView.addSubview(label)
        return label
    }()

    enum Identifier: String {
        case path = "Cell"
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        makeLabel()
    }
    func saveModel() {
        label.text = "asjkdjgajksd"
    }

}
extension TelevisionPageCellTableViewCell {
    private func makeLabel() {
        label.snp.makeConstraints { make in
            make.top.equalTo(contentView).offset(10)
            make.left.equalTo(contentView).offset(10)
            make.width.equalTo(100)
            make.height.equalTo(30)
        }
    }
}
