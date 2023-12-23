//
//  MoviePageTableViewProvider.swift
//  TmdbMovieApp
//
//  Created by Muhammed fatih Elçi on 23.12.2023.
//

import UIKit

final class MoviePageTableViewProvider:NSObject {
    
}

extension MoviePageTableViewProvider: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MovieTableViewCell.Identifier.path.rawValue, for: indexPath) as? MovieTableViewCell else { return UITableViewCell()
        }
        cell.layer.borderWidth = 0.3
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.cornerRadius = 10
        cell.saveModel()
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
}


