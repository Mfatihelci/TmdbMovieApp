//
//  SearchViewController.swift
//  TmdbMovieApp
//
//  Created by Muhammed fatih Elçi on 19.12.2023.
//

import UIKit

class SearchViewController: UIViewController {
    
    private let searchBar: UISearchController = {
       let search = UISearchController()
        search.searchBar.placeholder = "Ara"
        return search
    }()

    private let tableView: UITableView = {
       let table = UITableView()
        table.backgroundColor = .black
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initDelegate()
        view.backgroundColor = .white
    }

    private func initDelegate() {
        searchBar.searchResultsUpdater = self
        navigationItem.searchController = searchBar
        view.addSubview(tableView)
        makeTableView()
    }

}
extension SearchViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        print(searchBar.searchBar.text ?? "error")
    }
}
extension SearchViewController {
    private func makeTableView() {
        tableView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(0)
            make.left.equalTo(view).offset(0)
            make.right.equalTo(view).offset(0)
            make.bottom.equalTo(view).offset(0)
        }
    }
}
