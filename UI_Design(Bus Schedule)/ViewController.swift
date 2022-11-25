//
//  ViewController.swift
//  UI_Design(Bus Schedule)
//
//  Created by Rachana Pandit on 23/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tblBusSchedule:UITableView!
    @IBOutlet weak var lblBusSchedule:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewDataSourceAndDelegate()
        lblBusSchedule.layer.cornerRadius = 40
        lblBusSchedule.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }

    func tableViewDataSourceAndDelegate()
    {
        tblBusSchedule.dataSource = self
        tblBusSchedule.delegate = self
    }
}

extension ViewController:UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tblBusSchedule.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.viewForCell.layer.cornerRadius = 20
        cell.btnDirection.layer.cornerRadius = 10
        cell.btnTickets.layer.cornerRadius = 10
        return cell
    }
}

// MARK:- TableView Delegate Methods
extension ViewController:UITableViewDelegate
{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 130
    }
     
}
