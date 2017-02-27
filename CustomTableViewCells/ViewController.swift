//
//  ViewController.swift
//  CustomTableViewCells
//
//  Created by Sierra 4 on 27/02/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import UIKit

struct sectionWiseData {
    var sectionName: String
    var sectionImages: [UIImage]
    var sectionText: [String]
}

class ViewController: UIViewController {
    
    var objectArray = [sectionWiseData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        objectArray = [
            sectionWiseData(sectionName: "Electronics",
                            sectionImages: [#imageLiteral(resourceName: "cat"),#imageLiteral(resourceName: "cat"),#imageLiteral(resourceName: "cat"),#imageLiteral(resourceName: "cat"),#imageLiteral(resourceName: "cat"),#imageLiteral(resourceName: "cat")],
                            sectionText: ["cat1","cat2","cat3","cat4","cat5","cat6"]),
            sectionWiseData(sectionName: "Fashion",
                            sectionImages: [#imageLiteral(resourceName: "cat"),#imageLiteral(resourceName: "cat"),#imageLiteral(resourceName: "cat"),#imageLiteral(resourceName: "cat"),#imageLiteral(resourceName: "cat"),#imageLiteral(resourceName: "cat"),#imageLiteral(resourceName: "cat"),#imageLiteral(resourceName: "cat"),#imageLiteral(resourceName: "cat"),#imageLiteral(resourceName: "cat")],
                            sectionText: ["cat1","cat2","cat3","cat4","cat5","cat6","cat7","cat8","cat9","cat10"])
        ]
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return objectArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objectArray[section].sectionText.count
    }
    
//    //Simple Header
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return objectArray[section].sectionName
//    }
    
    //Custom Header
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = Bundle.main.loadNibNamed("HeaderView", owner: self, options: nil)?.first as! HeaderView
        headerView.labelSectionName.text = objectArray[section].sectionName
        return headerView
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if objectArray[indexPath.section].sectionName == "Electronics" {
            
            let cell = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            cell.imageViewOutlet.image = objectArray[indexPath.section].sectionImages[indexPath.row]
            cell.lblOutlet.text = objectArray[indexPath.section].sectionText[indexPath.row]
            return cell
            
        } else if objectArray[indexPath.section].sectionName == "Fashion" {
            
            let cell = Bundle.main.loadNibNamed("TableViewCell2", owner: self, options: nil)?.first as! TableViewCell2
            cell.imageViewOutlet.image = objectArray[indexPath.section].sectionImages[indexPath.row]
            cell.lblOutlet.text = objectArray[indexPath.section].sectionText[indexPath.row]
            return cell
            
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if objectArray[indexPath.section].sectionName == "Electronics" {
            return 183
        } else if objectArray[indexPath.section].sectionName == "Fashion" {
            return 100
        }
        return 0
    }
    
}

