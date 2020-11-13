//
//  categoryCell.swift
//  EzStore
//
//  Created by Imran Sifat on 13/11/20.
//  Copyright © 2020 Imran Sifat. All rights reserved.
//

import UIKit
class categoryCell: UITableViewCell{
    let searchBar = UISearchBar()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style:style, reuseIdentifier:reuseIdentifier)
        backgroundColor = .clear
        cellConstraints()
        addControl()
    }
    func addControl() {
        let segmentItems = ["Games", "Social Media", "Photo editor"]
        let control = UISegmentedControl(items: segmentItems)
        control.backgroundColor = .clear
        control.selectedSegmentTintColor = #colorLiteral(red: 0.6196437478, green: 0.02258475684, blue: 0.0311660897, alpha: 1)
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        let titleTextAttributes2 = [NSAttributedString.Key.foregroundColor: UIColor.black]
        control.setTitleTextAttributes(titleTextAttributes2, for: .normal)
        control.setTitleTextAttributes(titleTextAttributes, for: .selected)
        control.tintColor = .red
        //control.frame = CGRect(x: 10, y: 250, width: (view.frame.width - 20), height: 50)
        control.addTarget(self, action: #selector(segmentControl(_:)), for: .valueChanged)
        control.selectedSegmentIndex = 1
        addSubview(control)
        control.translatesAutoresizingMaskIntoConstraints = false
        control.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 10).isActive = true
        control.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        control.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
    }
    @objc func segmentControl(_ segmentedControl: UISegmentedControl) {
       switch (segmentedControl.selectedSegmentIndex) {
          case 0:
             // First segment tapped
          break
          case 1:
             // Second segment tapped
          break
          default:
          break
       }
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func cellConstraints(){
        addSubview(searchBar)
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        searchBar.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        searchBar.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        //this is for segmented control
        
        
    }
    
}
