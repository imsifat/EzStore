//
//  HomePage2.swift
//  EzStore
//
//  Created by Imran Sifat on 12/11/20.
//  Copyright © 2020 Imran Sifat. All rights reserved.
//

import UIKit
private let reuseIdentifier = "BannerCell"

class HomePage2: UIViewController, UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    let layout = UICollectionViewFlowLayout()
    @IBOutlet weak var tabBar: UIView!
    
       override func viewDidLoad() {
           super.viewDidLoad()
           tableView.delegate = self
           tableView.dataSource = self
           tableView.backgroundColor = #colorLiteral(red: 0.960842073, green: 0.8906492591, blue: 0.8893769383, alpha: 1)
           CVConstraints()
           
           
           // Uncomment the following line to preserve selection between presentations
           // self.clearsSelectionOnViewWillAppear = false

           // Register cell classes
           registerCell()

           // Do any additional setup after loading the view.
       }
       
       func CVConstraints(){
           //this constraints is for collectionView
           view.addSubview(tableView)
           tableView.translatesAutoresizingMaskIntoConstraints = false
           tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
           tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
           tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
           tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
           
       }
       
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return 7
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           if indexPath.row == 0{
               let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! BannerCell
               tableView.rowHeight = view.frame.height / 3.5
               return cell
           } else if indexPath.row == 1 {
               let cell = tableView.dequeueReusableCell(withIdentifier: "NewApps", for: indexPath) as! NewApps
               tableView.rowHeight = view.frame.height / 6
               return cell
           }else if indexPath.row == 2 {
               let cell = tableView.dequeueReusableCell(withIdentifier: "NewApps", for: indexPath) as! NewApps
               cell.SectionName.text = "Updated Apps"
               tableView.rowHeight = view.frame.height / 6
               return cell
           }else if indexPath.row == 3 {
               let cell = tableView.dequeueReusableCell(withIdentifier: "NewApps", for: indexPath) as! NewApps
               cell.SectionName.text = "Popular Apps"
               tableView.rowHeight = view.frame.height / 6
               return cell
           }else if indexPath.row == 4 {
               let cell = tableView.dequeueReusableCell(withIdentifier: "NewApps", for: indexPath) as! NewApps
               cell.SectionName.text = "All Apps"
               tableView.rowHeight = view.frame.height / 6
               return cell
           }else if indexPath.row == 5 {
               let cell = tableView.dequeueReusableCell(withIdentifier: "NewApps", for: indexPath) as! NewApps
               cell.SectionName.text = "All Apps"
               tableView.rowHeight = view.frame.height / 6
               return cell
           }else if indexPath.row == 6 {
               let cell = tableView.dequeueReusableCell(withIdentifier: "NewApps", for: indexPath) as! NewApps
               cell.SectionName.text = "Social Media"
               tableView.rowHeight = view.frame.height / 6
               return cell
           }
           return UITableViewCell()
       }
       
       
       // Cell Name: Banner, new Apps, Updated apps, popular apps, all games, all apps, social media
       func registerCell(){
           tableView.register(BannerCell.self, forCellReuseIdentifier: reuseIdentifier)
           tableView.register(NewApps.self, forCellReuseIdentifier: "NewApps")
       }
}
