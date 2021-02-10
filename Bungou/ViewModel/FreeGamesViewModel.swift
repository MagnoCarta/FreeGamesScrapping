//
//  FreeGamesViewModel.swift
//  Bungou
//
//  Created by Gilberto Magno on 2/9/21.
//

import Foundation
import UIKit

public class FreeGamesViewModel {
    
    
        // MARK: - Initialization
        init(model: [FreeGamesModel]? = nil) {
            if let inputModel = model {
                FreeGames = inputModel
            }
        }
        
        var FreeGames = [FreeGamesModel]()
        var icons : [UIImage] = []
        
        public func configure(_ view: FreeGamesView) {
           // view.titleLabel.text = FreeGames.first?.title
           // view.titleLabel.textColor = .blue
            view.iconFreeGames.append(UIImage(named: "Icon_432")!)
            view.iconFreeGames.append(UIImage(named: "Icon_432")!)
            view.iconFreeGames.append(UIImage(named: "Icon_432")!)
            view.iconFreeGames.append(UIImage(named: "Icon_432")!)
            icons = view.iconFreeGames

        }
        
    
    
    
}
