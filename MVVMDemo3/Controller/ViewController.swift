//
//  ViewController.swift
//  MVVMDemo3
//
//  Created by mac-0003 on 25/12/18.
//  Copyright © 2018 mac-0003. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tblVList: UITableView!
    private var sourceListViewModel: SourceListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sourceListViewModel = SourceListViewModel()
        
        sourceListViewModel.populateSources { (completed) in
            if completed {
                self.tblVList.reloadData()
            }
        }
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sourceViewModels.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sourceModel = sourceViewModels[indexPath.row]
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "SourceTblCell") as? SourceTblCell {
            cell.lblHeading.text = sourceModel.name
            cell.lblDescription.text = sourceModel.description
            
            return cell
        }
        return UITableViewCell()
    }
    
    
}

