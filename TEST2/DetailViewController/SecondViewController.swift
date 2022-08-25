//
//  secondView.swift
//  TEST2
//
//  Created by coder on 25.08.2022.
//
import Foundation
import UIKit


class SecondViewController: UIViewController {
    
    private lazy var collectionView: UICollectionView = {
            let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
            collection.register(cellType: CreateAnEventCollectionCell.self)
            collection.delegate = self
            collection.dataSource = self
            return collection
        }()
    
   
    
    override func viewDidLoad() {
         super.viewDidLoad()
        
        buttonBack()
        
    }
        
    func buttonBack() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "❮ Назад", style: .plain, target: self, action: #selector(dismissSelf))
        let tabBar = navigationItem.leftBarButtonItem
        tabBar!.tintColor = .white
        
    }
    
    @objc private func dismissSelf() {
        dismiss(animated: true, completion: nil)
    }
    
}
