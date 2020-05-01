//
//  ViewController.swift
//
//  Created by David GJ on 22/11/2019.
//  Copyright © 2019 David GJ. All rights reserved.
//

import Foundation
import UIKit

protocol FirstViewProtocol: ViewProtocol {
    func showTableView(list: [String])
}

class InitViewController: BaseViewController, FirstViewProtocol {

    @IBOutlet weak var tableView: UITableView!
    
    var presenter: InitPresenterProtcocol?
    var currentList: [String] = [String]()
    
    override class var storyboardName: String {
        return "Main"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        presenter?.viewDidLoad(viewProtocol: self)
    }
    
    func showTableView(list: [String]) {
        self.currentList = list
        tableView.reloadData()
    }
    
    @IBAction func btnAll(_ sender: Any) {
        presenter?.btnAllTapped()
    }
    @IBAction func btnVisible(_ sender: Any) {
        presenter?.btnVisibleTapped()
    }
}

extension InitViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            return currentList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCell.CellStyle.value1, reuseIdentifier: "mycell")
        cell.textLabel?.text  = currentList[indexPath.row]
        cell.textLabel?.numberOfLines = 2
        
        return cell
    }
    
}

