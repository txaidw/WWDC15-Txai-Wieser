//
//  LifeEventCollectionViewCell.swift
//  WWDC 2015 - Txai Wieser
//
//  Created by Txai Wieser on 01/04/15.
//  Copyright (c) 2015 Txai Wieser. All rights reserved.
//

import UIKit

@IBDesignable
class ExtrasCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var iconImageView: UIImageView!
    
    var extraContent:ExtraInfo? {
        didSet {
            if let extra = extraContent {
                configure(extra)
            }
        }
    }
    var item = 0 {
        didSet {
            self.backgroundColor = UIColor.WWDCsecondary(item)
            self.tintColor = self.backgroundColor
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    override func prepareForInterfaceBuilder() {
        initialize()
    }
    
    func initialize() {
        self.backgroundColor = UIColor.brownColor()
        self.layer.borderWidth = 0
        self.layer.borderColor = UIColor.myWhite().CGColor
        self.layer.cornerRadius = extraCellSize.radius()
        
        if let extra = extraContent {
            configure(extra)
        }
    }
    
    func configure(extra:ExtraInfo) {
        iconImageView.image = UIImage(named: extra.iconName)
    }
    
    
    
    
    
    
    
    
    
    func scaleUp(by amount:CGFloat, from cFrame:CGRect) {
        let cSize = cFrame.size*amount
        let cPos = cFrame.origin - (cSize - cFrame.size)/2
        
        UIView.animateWithDuration(0.2, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.8, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.frame = CGRect(origin: cPos, size: cSize)
            }, completion: nil)
    }
    
    func scaleDown(from cFrame:CGRect) {
        let cSize = cFrame.size
        let cPos = cFrame.origin
        UIView.animateWithDuration(0.2, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.8, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.frame = CGRect(origin: cPos, size: cSize)
            }, completion: nil)
    }
    
}
