//
//  TableViewCell.swift
//  FakeBook
//
//  Created by Eduardo Tolmasquim on 13/05/17.
//  Copyright © 2017 Eduardo. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileNameLabel: UILabel!
    @IBOutlet weak var postLabel: UILabel!
    @IBOutlet weak var postImageView: UIImageView!
    
    @IBOutlet weak var postImageHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var postImageTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var postLabelTopConstraint: NSLayoutConstraint!
    
    func configure(profileName:String, profileImage:String, postText:String?, postImage:String?) {
        
        profileNameLabel.text = profileName
        
        profileImageView.image = UIImage(named: profileImage) ?? UIImage(named: "placeholder")
        
        if let text = postText {
            postLabel.text = text
            postLabelTopConstraint.constant = 10
        }
        
        if let imageName = postImage, let image = UIImage(named: imageName) {
            let imageRatio = image.size.height / image.size.width
            postImageHeightConstraint.constant = UIScreen.main.bounds.width * imageRatio
            postImageView.image = image
            postImageTopConstraint.constant = 10
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        profileImageView.image = UIImage(named: "placeholder")
        
        postLabel.text = ""
        postImageView.image = nil
        postImageHeightConstraint.constant = 0
        postLabelTopConstraint.constant = 0
        postImageTopConstraint.constant = 0
    }
    
}
