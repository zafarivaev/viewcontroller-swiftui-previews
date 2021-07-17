//
//  UsersViewController.swift
//  PreviewingViewControllers
//
//  Created by Zafar on 15/07/21.
//

import UIKit
import SwiftUI

class UsersViewController: UITableViewController {
    
    var users: [User] = []

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupUI()
        
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.users = User.mockUsers
            self.tableView.reloadData()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.setupNavigationItem()
    }
    
    // MARK: - UITableView Data Source
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.users.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else {
            preconditionFailure()
        }
        
        cell.textLabel?.text = users[indexPath.row].title
        return cell
    }

}

// MARK: - UI Setup
extension UsersViewController {
    private func setupUI() {
        if #available(iOS 13.0, *) {
            self.overrideUserInterfaceStyle = .light
        }
    }
    
    private func setupNavigationItem() {
        self.navigationItem.title = "Users"
    }
}

@available(iOS 13.0, *)
struct UsersViewControllerPreview: PreviewProvider {
    static var previews: some View {
        let usersViewController = UsersViewController()
        return UINavigationController(rootViewController: usersViewController)
            .preview
    }
}
