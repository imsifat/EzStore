//
//  NewApps.swift
//  EzStore
//
//  Created by Imran Sifat on 11/11/20.
//  Copyright © 2020 Imran Sifat. All rights reserved.
//

import UIKit

class NewApps: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    let collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //collection.isScrollEnabled = true
        collection.showsVerticalScrollIndicator = false
        collection.showsHorizontalScrollIndicator = false
        collection.backgroundColor = .clear
        return collection
    }()
    let SectionName : UILabel = {
        let label = UILabel()
        label.text = "New Apps"
        label.font = label.font.withSize(20)
        return label
    }()
    let showAllBTN : UIButton = {
        let btn = UIButton()
        btn.setTitle("Show All", for: .normal)
        btn.setTitleColor(.lightGray, for: .normal)
        //btn.frame = CGRect(x: <#T##Int#>, y: <#T##Int#>, width: <#T##Int#>, height: sel)
        //btn.addTarget(self(), action: <#T##Selector#>, for: <#T##UIControl.Event#>)
        return btn
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
           super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
           collectionView.delegate = self
           collectionView.dataSource = self
           cellConstraints()
           collectionView.register(AppsCell.self, forCellWithReuseIdentifier: "AppsCell")
       }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AppsCell", for: indexPath) as! AppsCell
        cell.image = UIImageView(image: #imageLiteral(resourceName: "categories"))
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.height, height: collectionView.frame.height)
    }
    func cellConstraints(){
        addSubview(SectionName)
        addSubview(showAllBTN)
        addSubview(collectionView)
        
        SectionName.translatesAutoresizingMaskIntoConstraints = false
        showAllBTN.translatesAutoresizingMaskIntoConstraints = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        //Label Constraints
        SectionName.topAnchor.constraint(equalTo: topAnchor).isActive = true
        SectionName.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        
        //Button Constraints
        showAllBTN.topAnchor.constraint(equalTo: topAnchor).isActive = true
        showAllBTN.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        //CollectionView Constraints
        collectionView.topAnchor.constraint(equalTo: showAllBTN.bottomAnchor).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5).isActive = true
        
    }
}
class AppsCell: UICollectionViewCell{
    var image = UIImageView()
    override init(frame: CGRect){
        super.init(frame:frame)
        addSubview(image)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.topAnchor.constraint(equalTo: topAnchor).isActive = true
        image.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        image.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        image.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        image.clipsToBounds = true
        image.layer.cornerRadius = self.frame.height / 2
        image.image = #imageLiteral(resourceName: "categories")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
