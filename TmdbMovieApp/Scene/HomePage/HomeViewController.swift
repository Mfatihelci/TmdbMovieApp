//
//  HomeViewController.swift
//  TmdbMovieApp
//
//  Created by Muhammed fatih Elçi on 19.12.2023.
//

import UIKit
import SnapKit
import Kingfisher

class HomeViewController: UIViewController {
    
    private let imageView: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 15
        image.layer.masksToBounds = true
        let imageUrlString = "https://tr.web.img2.acsta.net/pictures/23/05/08/09/02/2465323.jpg"
                let imageUrl = URL(string: imageUrlString)
                image.kf.setImage(with: imageUrl)
        return image
    }()
    
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
        return collectionView
    }()
    
    private lazy var scrollView: UIScrollView = {
       let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.isScrollEnabled = true
        scrollView.bounces = true
        scrollView.backgroundColor = .white
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

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        drawDesing()
        makeFunc()
    }
    
    private func drawDesing() {
        view.addSubview(imageView)
        view.addSubview(labelOne)
        view.addSubview(collectionViewOne)
        view.addSubview(labelTwo)
        view.addSubview(collectionViewTwo)
        view.addSubview(labelThree)
        view.addSubview(collectionViewThree)
        view.addSubview(scrollView)
        view.addSubview(segmentControlOne)
        view.addSubview(segmentControlTwo)
        view.addSubview(segmentControlThree)
    }
    
    private func makeFunc() {
        makeImageView()
        makeLabelOne()
        makeCollectionViewOne()
        makeLabelTwo()
        makeCollectionViewTwo()
        makeLabelThree()
        makeCollectionViewThree()
        makeScrollView()
        makeSegmentOne()
        makeSegmentTwo()
        makeSegmentThree()
    }
}

extension HomeViewController {
    private func makeImageView() {
        imageView.snp.makeConstraints { make in
            make.top.equalTo(view).offset(0)
            make.left.right.equalTo(view).offset(0)
            make.height.equalTo(view.frame.height / 2.2)
        }
    }

    private func makeLabelOne() {
        labelOne.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(5)
            make.left.equalTo(view).offset(0)
            make.width.equalTo(150)
            make.height.equalTo(40)
        }
    }
    private func makeSegmentOne() {
        segmentControlOne.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(5)
            make.left.equalTo(labelOne.snp.right).offset(5)
            make.height.equalTo(35)
            make.width.equalTo(180)
        }
    }
    private func makeCollectionViewOne() {
        collectionViewOne.snp.makeConstraints { make in
            make.top.equalTo(labelOne.snp.bottom).offset(10)
            make.left.equalTo(view).offset(10)
            make.right.equalTo(view).inset(10)
            make.height.equalTo(150)
        }
    }
    private func makeLabelTwo() {
        labelTwo.snp.makeConstraints { make in
            make.top.equalTo(collectionViewOne.snp.bottom).offset(5)
            make.left.equalTo(view).offset(0)
            make.width.equalTo(150)
            make.height.equalTo(40)
        }
    }
    private func makeSegmentTwo() {
        segmentControlTwo.snp.makeConstraints { make in
            make.top.equalTo(collectionViewOne.snp.bottom).offset(5)
            make.left.equalTo(labelOne.snp.right).offset(5)
            make.height.equalTo(35)
            make.width.equalTo(180)
        }
    }
    private func makeCollectionViewTwo() {
        collectionViewTwo.snp.makeConstraints { make in
            make.top.equalTo(labelTwo.snp.bottom).offset(10)
            make.left.equalTo(view).offset(10)
            make.right.equalTo(view).inset(10)
            make.height.equalTo(150)
        }
    }
    private func makeLabelThree() {
        labelThree.snp.makeConstraints { make in
            make.top.equalTo(collectionViewTwo.snp.bottom).offset(5)
            make.left.equalTo(view).offset(0)
            make.width.equalTo(150)
            make.height.equalTo(40)
        }
    }
    private func makeSegmentThree() {
        segmentControlThree.snp.makeConstraints { make in
            make.top.equalTo(collectionViewTwo.snp.bottom).offset(5)
            make.left.equalTo(labelOne.snp.right).offset(5)
            make.height.equalTo(35)
            make.width.equalTo(180)
        }
    }
    private func makeCollectionViewThree() {
        collectionViewThree.snp.makeConstraints { make in
            make.top.equalTo(labelThree.snp.bottom).offset(10)
            make.left.equalTo(view).offset(10)
            make.right.equalTo(view).inset(10)
            make.height.equalTo(150)
        }
    }
    private func makeScrollView() {
        
    }
  
}
