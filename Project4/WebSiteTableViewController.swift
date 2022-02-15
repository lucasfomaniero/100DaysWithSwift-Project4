//
//  WebSiteTableViewController.swift
//  Project4
//
//  Created by Lucas Maniero on 15/02/22.
//

import UIKit

class WebSiteTableViewController: UITableViewController {
    private var websites: [String] = ["apple.com", "hackingwithswift.com", "cocoacasts.com", "www.globo.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = websites[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let websiteViewController = ViewController()
        websiteViewController.website = websites[indexPath.row]
        navigationController?.pushViewController(websiteViewController, animated: true)
    }
}
