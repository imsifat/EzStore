//
//  ApplicationPage.swift
//  EzStore
//
//  Created by Imran Sifat on 12/11/20.
//  Copyright © 2020 Imran Sifat. All rights reserved.
//

import UIKit

class ApplicationPage: UITableViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        //tableView.separatorStyle = .none
        tableView.separatorColor = #colorLiteral(red: 0.6196078431, green: 0.02258475684, blue: 0.0311660897, alpha: 1)
        tableView.backgroundColor = #colorLiteral(red: 0.960842073, green: 0.8906492591, blue: 0.8893769383, alpha: 1)
    }

    // MARK: - Table view data source

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as! categoryCell
            tableView.rowHeight = view.frame.height / 6
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "applicationCell") as! applicationCell
            tableView.rowHeight = view.frame.height / 6
            return cell
        }
    }
    
    func registerCell(){
        tableView.register(categoryCell.self, forCellReuseIdentifier: "categoryCell")
        tableView.register(applicationCell.self, forCellReuseIdentifier: "applicationCell")
    }

}




