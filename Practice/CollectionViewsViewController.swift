//
//  CollectionViewsViewController.swift
//  Practice
//
//  Created by Jonathan Chong on 9/4/18.
//  Copyright © 2018 Jonathan Chong. All rights reserved.
//

import UIKit

class CollectionViewsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    //instantiating instead of segue
    @IBAction func tapPiece(_ sender: UITapGestureRecognizer) {
        guard sender.view != nil else { return }
        
        if sender.state == .ended {
            print("Touch Recognized")
            let viewController: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as UIViewController
            self.present(viewController, animated: false, completion: nil)
        }
    }
    
    
    
    @IBOutlet var collectionView: UICollectionView!
    
    let dataSource = DataSource()
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.size.width/4, height: collectionView.bounds.size.width/4)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = dataSource
        //requires setting collectionView.delegate to self in order for extension to work
        collectionView.delegate = self
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
            layout.minimumLineSpacing = 1 //in between columns
            layout.minimumInteritemSpacing = 1 //in between rows
        }
        collectionView.reloadData()
        
    }
    
    
}

/*extension CollectionViewsViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewWidth = collectionView.bounds.size.width
        let numberOfItemsPerRow: CGFloat = 4
        let itemWidth = collectionViewWidth / numberOfItemsPerRow
        
        return CGSize(width: itemWidth, height: itemWidth)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        collectionView.reloadData()
    }
}*/
