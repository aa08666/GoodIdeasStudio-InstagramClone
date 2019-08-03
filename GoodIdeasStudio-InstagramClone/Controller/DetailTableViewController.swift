//
//  DetailTableViewController.swift
//  GoodIdeasStudio-InstagramClone
//
//  Created by 林柏呈 on 2019/8/2.
//  Copyright © 2019 Jerry. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {

    var user: User?
    var timeline: UserTimeline?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerNib(nibname: "timelinecell")
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "timelinecell", for: indexPath) as! TimeLineTableViewCell
        guard let timeline = timeline else { return UITableViewCell()}
        cell.updateCell(timeline)
        cell.avatar.layer.cornerRadius = cell.avatar.frame.height / 2
        return cell
    }
    
    
    
    func registerNib(nibname: String) {
        let nib = UINib(nibName: nibname, bundle: .main)
        self.tableView.register(nib, forCellReuseIdentifier: nibname)
    }

}
