//
//  HomePage.swift
//  EzStore
//
//  Created by Imran Sifat on 11/11/20.
//  Copyright © 2020 Imran Sifat. All rights reserved.
//

import UIKit

private let reuseIdentifier = "BannerCell"

class HomePage: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    let tableView = UITableView()
    let layout = UICollectionViewFlowLayout()
    let tabBarView = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = #colorLiteral(red: 0.960842073, green: 0.8906492591, blue: 0.8893769383, alpha: 1)
        CVConstraints()
        tableView.separatorColor = #colorLiteral(red: 0.6196078431, green: 0.02352941176, blue: 0.03137254902, alpha: 1)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        registerCell()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        tabBar()
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource
    
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
    func tabBar(){
        view.addSubview(tabBarView)
        tabBarView.backgroundColor = .red
        tabBarView.translatesAutoresizingMaskIntoConstraints = false
        tabBarView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 20).isActive = true
        tabBarView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        tabBarView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20).isActive = true
    }
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}


