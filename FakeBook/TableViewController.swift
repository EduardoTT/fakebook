//
//  ViewController.swift
//  FakeBook
//
//  Created by Eduardo Tolmasquim on 13/05/17.
//  Copyright © 2017 Eduardo. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 50
        tableView.register(UINib(nibName:"TableViewCell",bundle:nil), forCellReuseIdentifier: "cell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? TableViewCell else {
            return UITableViewCell()
        }
        
        switch(indexPath.row) {
        case 0:
            cell.configure(profileName: "Zequinha", profileImage: "zequinha", postText: "Oi pessoal", postImage: nil)
        case 1:
            cell.configure(profileName: "Dr Abobrinha", profileImage: "drAbobrinha", postText: "Este castelo será meu! meu! meu!", postImage: "castelo-vertical")
        case 2:
            cell.configure(profileName: "Dr Abobrinha", profileImage: "drAbobrinha", postText: nil, postImage: "castelo-horizontal")
        default:
            cell.configure(profileName: "Zequinha", profileImage: "zequinha", postText: nil, postImage: nil)
        }
        
        
        return cell
    }
}

