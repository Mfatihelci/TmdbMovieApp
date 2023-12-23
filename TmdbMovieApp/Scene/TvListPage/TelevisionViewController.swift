//
//  TelevisionViewController.swift
//  TmdbMovieApp
//
//  Created by Muhammed fatih Elçi on 19.12.2023.
//

import UIKit
import SnapKit

class TelevisionViewController: UIViewController {
    private let label: UILabel = {
       let label = UILabel()
        label.font = .boldSystemFont(ofSize: 20)
        label.text = "Television"
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }()
    private let tableView: UITableView = {
       let table = UITableView()
        table.backgroundColor = .white
        table.register(TelevisionPageCellTableViewCell.self, forCellReuseIdentifier: TelevisionPageCellTableViewCell.Identifier.path.rawValue)
        return table
    }()
    
    let televisionPageProvider = TelevisionPageTableViewProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initDelegate()
    }
    
    private func initDelegate() {
        view.addSubview(label)
        view.addSubview(tableView)
        tableView.delegate = televisionPageProvider
        tableView.dataSource = televisionPageProvider
        makeLabel()
        makeTableView()
    }
}

extension TelevisionViewController {
    private func makeLabel() {
        label.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(10)
            make.left.equalTo(view).offset(10)
            make.width.equalTo(200)
            make.height.equalTo(40)
        }
    }
    private func makeTableView() {
        tableView.snp.makeConstraints { make in
            make.top.equalTo(label.snp.bottom).offset(0)
            make.left.equalTo(view).offset(10)
            make.right.equalTo(view).inset(10)
            make.bottom.equalTo(view).offset(0)
        }
    }
}
