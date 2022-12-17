//
//  TableViewCell.swift
//  TableViewWithCollectionView
//
//  Created by Md Mehedi Hasan Angkur on 17/12/22.
//

import UIKit

class DemoTableViewCell: UITableViewCell {
    static let identifier = "TableViewCell"
    @IBOutlet var collectionView: UICollectionView!
    var model = [Model]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.register(DemoCollectionViewCell.getNib(), forCellWithReuseIdentifier: DemoCollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func config(with model: [Model]) {
        self.model = model
    }
    
    static func getNib() -> UINib {
        return UINib(nibName: DemoTableViewCell.identifier, bundle: nil)
    }
    
}

extension DemoTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DemoCollectionViewCell.identifier, for: indexPath) as! DemoCollectionViewCell
        
        cell.configure(with: model[indexPath.row])
        return cell
    }
    
    
}

extension DemoTableViewCell: UICollectionViewDelegate {
    
}

extension DemoTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 250, height: 250 )
    }
}
