//
//  applicationCell.swift
//  EzStore
//
//  Created by Imran Sifat on 13/11/20.
//  Copyright © 2020 Imran Sifat. All rights reserved.
//

import UIKit
class applicationCell: UITableViewCell{
    let icon = UIImageView()
    let name = UILabel()
    let desc = UILabel()
    let version = UILabel()
    let publishDate = UILabel()
    let viewPost : UIButton = {
        let viewPost = UIButton()
        viewPost.setTitle("View Post", for: .normal)
        viewPost.setTitleColor(.black, for: .normal)
        viewPost.layer.borderColor = #colorLiteral(red: 0.6196078431, green: 0.02352941176, blue: 0.03137254902, alpha: 1)
        viewPost.layer.borderWidth = 1.0
        viewPost.clipsToBounds = true
        viewPost.layer.cornerRadius = 5
        return viewPost
    }()
    let stackView : UIStackView = {
       let stack = UIStackView()
        //stack.alignment = .fill
        stack.distribution = .fillEqually
        //stack.spacing = 5
        stack.axis = .vertical
        return stack
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style:style, reuseIdentifier:reuseIdentifier)
        backgroundColor = .clear
        cellConstraints()
        icon.image = #imageLiteral(resourceName: "suggestion")
        name.text = "Knowledge"
        desc.text = "Enlight your knowledge with this app"
        desc.numberOfLines = 2
        version.text = "2.3"
        publishDate.text = "2/5/2020"
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func cellConstraints(){
        addSubview(icon)
        addSubview(stackView)
        addSubview(viewPost)
        icon.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        viewPost.translatesAutoresizingMaskIntoConstraints = false
        icon.centerYAnchor.constraint(lessThanOrEqualTo: centerYAnchor).isActive = true
        icon.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        icon.heightAnchor.constraint(equalToConstant: 40).isActive = true
        icon.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        //stackview
        stackView.addArrangedSubview(name)
        stackView.addArrangedSubview(desc)
        stackView.addArrangedSubview(version)
        stackView.addArrangedSubview(publishDate)
        stackView.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
        stackView.leadingAnchor.constraint(equalTo: icon.trailingAnchor, constant: 10).isActive = true
        stackView.trailingAnchor.constraint(equalTo: viewPost.leadingAnchor, constant: -20).isActive = true
        
        //viewPost
        viewPost.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        viewPost.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -10).isActive = true
        //viewPost.leadingAnchor
        
    }
}
