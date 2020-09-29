//
//  UICollectionView+Extensions.swift
//  eniyitahmin.com
//
//  Created by Hüseyin Vural on 1.06.2018.
//  Copyright © 2018 Gürkan BULUT. All rights reserved.
//

import UIKit

extension UICollectionView{
    /*Son item gelene kadar bir sonrakine scrool olur */
    public func goToNextItemInSection(section:Int,direction:UICollectionViewScrollPosition,animated:Bool)->Bool{
        guard let currentCellIndexPath = self.indexPathsForVisibleItems.last else{ return false }
        let newIndex = currentCellIndexPath.item + 1
        let itemCount = self.numberOfItems(inSection:0)
        if(newIndex<itemCount){
            let newIndexPath = IndexPath(item: newIndex, section: currentCellIndexPath.section)
            self.scrollToItem(at: newIndexPath, at: direction, animated: animated)
            return true
        }else{
            return false
        }
    }
    
    /*İlk item gelene kadar bir sonrakine scrool olur */
    public func goToPrevItemInSection(section:Int,direction:UICollectionViewScrollPosition,animated:Bool)->Bool{
        guard let currentCellIndexPath = self.indexPathsForVisibleItems.last else{ return false }
        let newIndex = currentCellIndexPath.item - 1
        if(newIndex>=0){
            let newIndexPath = IndexPath(item: newIndex, section: currentCellIndexPath.section)
            self.scrollToItem(at: newIndexPath, at: direction, animated: animated)
            return true
        }else{
            return false
        }
    }
}
