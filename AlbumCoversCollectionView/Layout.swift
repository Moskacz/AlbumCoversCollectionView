//
//  Layout.swift
//  AlbumCoversCollectionView
//
//  Created by Michal Moskala on 12.09.2018.
//  Copyright © 2018 Michal Moskala. All rights reserved.
//

import UIKit

class Layout: UICollectionViewFlowLayout {
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        guard let attributes = super.layoutAttributesForElements(in: rect) else { return nil }
        
        return attributes.map {
            let copied = $0.copy() as! UICollectionViewLayoutAttributes
            copied.transform3D = CATransform3DMakeRotation(1.8, 1.0, 1.0, 0.0)
            return copied
        }
    }
    
    override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        print("called")
        return super.layoutAttributesForItem(at: indexPath)
        
    }
}
