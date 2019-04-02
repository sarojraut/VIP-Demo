//
//  PostDetailTVCell.swift
//  VIP-Demo
//
//  Created by admin on 4/1/19.
//  Copyright © 2019 admin. All rights reserved.
//
import UIKit

class PostDetailTVCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
         setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
    }
    
    let cellView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.red
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "something"
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
         label.text = "something"
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setupView() {
        addSubview(cellView)
        cellView.addSubview(titleLabel)
        cellView.addSubview(descriptionLabel)
        NSLayoutConstraint.activate([
            cellView.topAnchor.constraint(equalTo: self.topAnchor, constant: 8),
            cellView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8),
            cellView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8),
            cellView.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant: -8)
            ])
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.cellView.topAnchor, constant: 0),
            titleLabel.rightAnchor.constraint(equalTo: self.cellView.rightAnchor, constant: -8),
            titleLabel.leftAnchor.constraint(equalTo: self.cellView.leftAnchor, constant: 8),
            titleLabel.bottomAnchor.constraint(equalTo: self.descriptionLabel.topAnchor, constant: -8)
            ])
        
        NSLayoutConstraint.activate([
            descriptionLabel.rightAnchor.constraint(equalTo: self.cellView.rightAnchor, constant: -8),
            descriptionLabel.leftAnchor.constraint(equalTo: self.cellView.leftAnchor, constant: 8),
            descriptionLabel.bottomAnchor.constraint(equalTo: self.cellView.bottomAnchor, constant: -8)
            ])
    }
    
    func setUpData(data:PostFieldsViewModel){
        descriptionLabel.text = data.description
        titleLabel.text = data.title
    }
    
    
}

struct PostFieldsViewModel : Equatable {
    var userImageUrl: String = ""
    var title: String = ""
    var description: String = ""
}

func ==(lhs: PostFieldsViewModel, rhs: PostFieldsViewModel) -> Bool {
    return (lhs.description == rhs.description || lhs.title == rhs.title ||  lhs.userImageUrl == rhs.userImageUrl)
}


