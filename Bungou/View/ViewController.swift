//
//  ViewController.swift
//  Bungou
//
//  Created by Gilberto Magno on 2/8/21.
//
//
//import UIKit
//import SwiftSoup
//
//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//
//
//        let url = URL(string: "https://gamedrops.opera.com/pt-br/")
//
//
//        super.viewDidLoad()
//
//
//
//        do {
//           let html = "<html><head><title>First parse</title></head>"
//               + "<body><p>Parsed HTML into a doc.</p></body></html>"
//           let doc: Document = try SwiftSoup.parse(html)
//                try print(doc.text())
//        } catch Exception.Error(let type, let message) {
//            print(message)
//        } catch {
//            print("error")
//        }
//        // Do any additional setup after loading the view.
//    }
//
//
//}
//


import UIKit

class FreeGamesViewController: UIViewController {
       
    // the view model is setup with simple
    var freeGamesViewModel = FreeGamesViewModel(model: [FreeGamesModel(title: "000webhost")])

    override func viewDidLoad() {
        super.viewDidLoad()
        let freeGamesView = FreeGamesView(frame: self.view.frame)
        freeGamesViewModel.configure(freeGamesView)
        self.view.addSubview(freeGamesView)
        freeGamesView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            freeGamesView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            freeGamesView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            freeGamesView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            freeGamesView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            ])
    }
    
    func delegates(view: FreeGamesView) {
        view.collectionView.register(FreeGamesViewCell.self, forCellWithReuseIdentifier: "FreeGamesViewCell")
        view.collectionView.delegate = self
        view.collectionView.dataSource = self
    }
    
}



extension FreeGamesViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       print("s")
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let FreeGamesCell = (collectionView.dequeueReusableCell(withReuseIdentifier: "FreeGamesViewCell", for: indexPath) as! FreeGamesViewCell)
        print("a")
        FreeGamesCell.set(icon: self.freeGamesViewModel.icons[indexPath.row])
       // FreeGamesCell.generateColor(row: indexPath.row)
        return FreeGamesCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let detailVC = DetailsViewController(note: notes[indexPath.row])
//        detailVC.delegate = self
//        navigationController?.pushViewController(detailVC, animated: true)
    }
}
