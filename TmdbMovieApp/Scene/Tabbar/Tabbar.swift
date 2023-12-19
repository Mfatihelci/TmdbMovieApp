//
//  Tabbar.swift
//  TmdbMovieApp
//
//  Created by Muhammed fatih Elçi on 19.12.2023.
//

import UIKit

class Tabbar: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
        setupApperance()
    }
    private func setupApperance() {
        tabBar.tintColor = .white
        tabBar.barTintColor = .black
    }
    
    //MARK: - Setup ViewController
    private func setupViewController() {
        viewControllers = [createNavController(for: HomeViewController(), title: TabTitles.home, image:                         TabImages.home, selectedImage: TabImages.selectedHome),
                           createNavController(for: SearchViewController(), title: TabTitles.search, image: TabImages.search, selectedImage: TabImages.selectedSearch),
                           createNavController(for: MovieViewController(), title: TabTitles.movie, image: TabImages.movie, selectedImage: TabImages.selectedMovie),
                           createNavController(for: TelevisionViewController(), title: TabTitles.television, image: TabImages.television, selectedImage: TabImages.selectedTelevision),
                           createNavController(for: PeopleViewController(), title: TabTitles.people, image: TabImages.people, selectedImage: TabImages.selectedPeople)]
    }
    private func createNavController(for rootViewController: UIViewController,title: String, image: UIImage,selectedImage: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image.withRenderingMode(.alwaysOriginal)
        navController.tabBarItem.selectedImage = selectedImage.withRenderingMode(.alwaysOriginal)
        navController.navigationBar.barTintColor = .white
        return navController
    }
}
//MARK: - Tab Titles and Images
extension Tabbar {
    private struct TabTitles {
        static let home = "Home"
        static let search = "Search"
        static let movie = "Movie"
        static let television = "TV"
        static let people = "People"
    }
    private struct TabImages {
        static let home = UIImage(named: "home")!
        static let selectedHome = UIImage(named: "selectedHome")!
        static let search = UIImage(named: "search")!
        static let selectedSearch = UIImage(named: "selectedSearch")!
        static let movie = UIImage(named: "movie")!
        static let selectedMovie = UIImage(named: "selectedMovie")!
        static let television = UIImage(named: "television")!
        static let selectedTelevision = UIImage(named: "selectedTelevision")!
        static let people = UIImage(named: "people")!
        static let selectedPeople = UIImage(named: "selectedPeople")!
    }
}
