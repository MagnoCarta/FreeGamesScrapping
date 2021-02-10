//
//  FreeGamesView.swift
//  Bungou
//
//  Created by Gilberto Magno on 2/9/21.
//

import Foundation
import UIKit

public class FreeGamesView: UIView {
    
   // public let titleLabel: UILabel
    
    var button = UIButton(type: .system)
    
    var collectionView: UICollectionView = {
        let collectionViewFlowLayout = UICollectionViewFlowLayout()
        collectionViewFlowLayout.itemSize = CGSize(width: 150 * UIScreen.scale.x, height: 200 * UIScreen.scale.y)
        
        collectionViewFlowLayout.minimumInteritemSpacing = 16
        collectionViewFlowLayout.sectionInset = UIEdgeInsets(top: 0, left: 40, bottom: 0, right: 40)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewFlowLayout)
        collectionView.backgroundColor = .background
        return collectionView
    }()
    var iconFreeGames : [UIImage] = []
    public override init(frame: CGRect) {
           // let titleFrame = CGRect(x: 0, y: 0, width: frame.width, height: frame.height)
          //  titleLabel = UILabel(frame: titleFrame)
          //  titleLabel.textAlignment = .center
            super.init(frame: frame)
            setupViews()
            addSubview(button)
            button.addTarget(self, action: #selector(reloadData), for: .touchUpInside)
        
           // addSubview(titleLabel)
            
          //  titleLabel.translatesAutoresizingMaskIntoConstraints = false
           // titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
           // titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        }
    
    func setupViews() {
        // Prevents a navigation bar large title bug
        self.addSubview(UIView())
        self.addSubview(collectionView)
        addConstraintCollectionView()
        
    }
    
    @objc func reloadData() {
        
        collectionView.reloadData()
        
        
    }
    
    func addConstraintCollectionView() {
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 32 * UIScreen.scale.y),
            collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0 * UIScreen.scale.x),
            collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0 * UIScreen.scale.x),
            collectionView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 0)
        ])
    }
        
        @available(*, unavailable)
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    

    
}
