//
//  TableViewCell.swift
//  一覧表示
//
//  Created by 山下幸助 on 2023/06/23.
//

import UIKit

class TableViewCell: UITableViewCell{
    
    @IBOutlet weak var number: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
