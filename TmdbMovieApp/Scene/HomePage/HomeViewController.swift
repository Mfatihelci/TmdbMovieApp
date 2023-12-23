//
//  HomeViewController.swift
//  TmdbMovieApp
//
//  Created by Muhammed fatih Elçi on 19.12.2023.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
    
    private let labelOne: UILabel = {
        let label = UILabel()
        label.text = "Treding Movie"
        label.font = .boldSystemFont(ofSize: 20)
        label.numberOfLines = 0
        label.textColor = .white
        return label
    }()
    
    private lazy var collectionViewOne: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        collectionView.register(MovieCollectionViewCell.self, forCellWithReuseIdentifier: MovieCollectionViewCell.Identifier.path.rawValue)
        return collectionView
    }()
    
    private let labelTwo: UILabel = {
        let label = UILabel()
        label.text = "Treding TV"
        label.font = .boldSystemFont(ofSize: 20)
        label.numberOfLines = 0
        label.textColor = .white
        return label
    }()
    
    private lazy var collectionViewTwo: UICollectionView = {
       let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        collectionView.register(TvCollectionViewCell.self, forCellWithReuseIdentifier: TvCollectionViewCell.Identifier.path.rawValue)
        return collectionView
    }()
    
    private let labelThree: UILabel = {
        let label = UILabel()
        label.text = "Treding Actor"
        label.font = .boldSystemFont(ofSize: 20)
        label.numberOfLines = 0
        label.textColor = .white
        return label
    }()
    
    private lazy var collectionViewThree: UICollectionView = {
       let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        collectionView.register(ActorCollectionViewCell.self, forCellWithReuseIdentifier: ActorCollectionViewCell.Identifier.path.rawValue)
        return collectionView
    }()
    
    private lazy var scrollView: UIScrollView = {
       let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.isScrollEnabled = true
        scrollView.bounces = true
        scrollView.backgroundColor = .black
        scrollView.contentSize = CGSize(width: 0, height: view.frame.height)
        return scrollView
    }()
    
    private let segmentControlOne: UISegmentedControl = {
        var segment = UISegmentedControl()
        let items = ["Today","This Week"]
        segment = UISegmentedControl(items: items)
        segment.backgroundColor = .white
        return segment
    }()
    
    private let segmentControlTwo: UISegmentedControl = {
        var segment = UISegmentedControl()
        let items = ["Today","This Week"]
        segment = UISegmentedControl(items: items)
        segment.backgroundColor = .white
        return segment
    }()
    
    private let segmentControlThree: UISegmentedControl = {
        var segment = UISegmentedControl()
        let items = ["Today","This Week"]
        segment = UISegmentedControl(items: items)
        segment.backgroundColor = .white
        return segment
    }()

    let moviePageProvider = MovieListProvider()
    let televisionProvider = TelevisionListProvider()
    let actorProvider = ActorListProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        drawDesing()
        makeFunc()
        initDelegate()
    }
    
    private func initDelegate() {
        scrollView.delegate = self
        collectionViewOne.dataSource = moviePageProvider
        collectionViewOne.delegate = moviePageProvider
        collectionViewTwo.dataSource = televisionProvider
        collectionViewTwo.delegate = televisionProvider
        collectionViewThree.dataSource = actorProvider
        collectionViewThree.delegate = actorProvider
    }
    
    private func drawDesing() {
        view.addSubview(scrollView)
    }
    
    private func makeFunc() {
        makeScrollView()
    }
}

extension HomeViewController: UIScrollViewDelegate { }
extension HomeViewController {
    private func makeScrollView() {
        scrollView.addSubview(labelOne)
        scrollView.addSubview(segmentControlOne)
        scrollView.addSubview(collectionViewOne)
        scrollView.addSubview(labelTwo)
        scrollView.addSubview(segmentControlTwo)
        scrollView.addSubview(collectionViewTwo)
        scrollView.addSubview(labelThree)
        scrollView.addSubview(segmentControlThree)
        scrollView.addSubview(collectionViewThree)
        
            labelOne.snp.makeConstraints { make in
                make.top.equalTo(scrollView.snp.top).offset(5)
                make.left.equalTo(view).offset(0)
                make.width.equalTo(150)
                make.height.equalTo(40)
            }
            segmentControlOne.snp.makeConstraints { make in
                make.top.equalTo(scrollView.snp.top).offset(5)
                make.left.equalTo(labelOne.snp.right).offset(5)
                make.height.equalTo(35)
                make.width.equalTo(180)
            }
            collectionViewOne.snp.makeConstraints { make in
                make.top.equalTo(labelOne.snp.bottom).offset(10)
                make.left.equalTo(view).offset(0)
                make.right.equalTo(view).offset(0)
                make.height.equalTo(200)
            }
            labelTwo.snp.makeConstraints { make in
                make.top.equalTo(collectionViewOne.snp.bottom).offset(5)
                make.left.equalTo(view).offset(0)
                make.width.equalTo(150)
                make.height.equalTo(40)
            }
            segmentControlTwo.snp.makeConstraints { make in
                make.top.equalTo(collectionViewOne.snp.bottom).offset(5)
                make.left.equalTo(labelOne.snp.right).offset(5)
                make.height.equalTo(35)
                make.width.equalTo(180)
            }
            collectionViewTwo.snp.makeConstraints { make in
                make.top.equalTo(labelTwo.snp.bottom).offset(10)
                make.left.equalTo(view).offset(0)
                make.right.equalTo(view).offset(0)
                make.height.equalTo(200)
            }
            labelThree.snp.makeConstraints { make in
                make.top.equalTo(collectionViewTwo.snp.bottom).offset(5)
                make.left.equalTo(view).offset(0)
                make.width.equalTo(150)
                make.height.equalTo(40)
            }
            segmentControlThree.snp.makeConstraints { make in
                make.top.equalTo(collectionViewTwo.snp.bottom).offset(5)
                make.left.equalTo(labelOne.snp.right).offset(5)
                make.height.equalTo(35)
                make.width.equalTo(180)
            }
            collectionViewThree.snp.makeConstraints { make in
                make.top.equalTo(labelThree.snp.bottom).offset(10)
                make.left.equalTo(view).offset(0)
                make.right.equalTo(view).offset(0)
                make.height.equalTo(200)
            }
        
        scrollView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(0)
            make.left.equalTo(view).offset(0)
            make.right.equalTo(view).offset(0)
            make.bottom.equalTo(view).offset(0)
        }
    }
}

