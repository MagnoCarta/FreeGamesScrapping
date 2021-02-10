//
//  FreeGamesCell.swift
//  Bungou
//
//  Created by Gilberto Magno on 2/9/21.
//

import Foundation
import UIKit

class FreeGamesViewCell: UICollectionViewCell {
    
    var FreeGameImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        organize()
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(icon: UIImage) {
        
        let FreeGameImage = icon
        FreeGameImageView.image = FreeGameImage
        FreeGameImageView.tintColor = .textWhite

    }
    
    
    func configure() {
        self.addSubview(FreeGameImageView)
        addConstraintIconView()
    }
    
    func organize() {
        
        self.layer.cornerRadius = 8
        
    }
    
    func addConstraintIconView() {
        //Lembrar de testar
        FreeGameImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            FreeGameImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 24),
            FreeGameImageView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.75),
            FreeGameImageView.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.75),
            FreeGameImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
//        FreeGameImageView.contentMode = .scaleAspectFit
    }
    
    
}
