//
//  DataSource.swift
//  Practice
//
//  Created by Jonathan Chong on 9/4/18.
//  Copyright © 2018 Jonathan Chong. All rights reserved.
//

import UIKit

class DataSource: NSObject, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let identifier = "UICollectionViewCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath)
        
        return cell
    }
    
    
}
