//
//  CollectionViewCell.swift
//  TableViewWithCollectionView
//
//  Created by Md Mehedi Hasan Angkur on 17/12/22.
//

import UIKit

class DemoCollectionViewCell: UICollectionViewCell {
    static let identifier = "CollectionViewCell"
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var textLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
     static public func getNib() -> UINib {
        return UINib(nibName: DemoCollectionViewCell.identifier, bundle: nil)
    }
    
    public func configure(with model: Model) {
        self.imageView.image = UIImage(named: model.image)
        self.textLabel.text = model.name
    }
}
