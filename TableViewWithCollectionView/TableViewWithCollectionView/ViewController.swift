//
//  ViewController.swift
//  TableViewWithCollectionView
//
//  Created by Md Mehedi Hasan Angkur on 16/12/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    var model = [Model]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(DemoTableViewCell.getNib(), forCellReuseIdentifier: DemoTableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        
        model.append(Model(image: "image", name: "image 1"))
        model.append(Model(image: "image", name: "image 2"))
        model.append(Model(image: "image", name: "image 3"))
        model.append(Model(image: "image", name: "image 4"))
        //tableView.register(DemoTableViewCell.nib(), forCellReuseIdentifier: DemoTableViewCell.identifier)
        // Do any additional setup after loading the view.
    }


}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DemoTableViewCell.identifier, for: indexPath) as! DemoTableViewCell
        cell.config(with: model)
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
    }
    
}
