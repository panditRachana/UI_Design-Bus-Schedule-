//
//  TableViewCell.swift
//  UI_Design(Bus Schedule)
//
//  Created by Rachana Pandit on 23/11/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var viewForCell:UIView!
    @IBOutlet weak var lblLocationName:UILabel!
    @IBOutlet weak var lblStartTime:UILabel!
    @IBOutlet weak var lblEndTime:UILabel!
    @IBOutlet weak var btnDirection:UIButton!
    @IBOutlet weak var btnTickets:UIButton!
    @IBOutlet weak var progressView:UIProgressView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
