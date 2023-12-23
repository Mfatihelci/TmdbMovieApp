//
//  MovieViewController.swift
//  TmdbMovieApp
//
//  Created by Muhammed fatih Elçi on 19.12.2023.
//

import UIKit

class MovieViewController: UIViewController {
    
    private let label: UILabel = {
       let label = UILabel()
        label.font = .boldSystemFont(ofSize: 20)
        label.text = "Movies"
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }()
    
    private let tableView: UITableView = {
       let table = UITableView()
        table.backgroundColor = .white
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        initDelegate()
}
    private func initDelegate() {
        view.addSubview(label)
        view.addSubview(tableView)
        makeLabel()
        makeTableView()
    }
}
extension MovieViewController {
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
