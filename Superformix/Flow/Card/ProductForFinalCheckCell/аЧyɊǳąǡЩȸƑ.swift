//
//  аЧyɊǳąǡЩȸƑ.swift
//  Superformix
//
//  Created by admin on 14.08.2025.
//

import UIKit

class аЧyɊǳąǡЩȸƑ: UITableViewCell {
    
    @IBOutlet weak var ĄźȚƪжŊǟUoZ: UIImageView! // clother im
    @IBOutlet weak var kȯнЛWĵùЦЪƠ: UILabel! // clotherName
    @IBOutlet weak var ВнЦΜЙьƯĒȲƎ: UILabel! // sizeLabel
    @IBOutlet weak var jnMьƯĒȲƎ: UILabel! // dollardNumLabel

    // MARK: - constanta ID
    static let cellID = "аЧyɊǳąǡЩȸƑ"

    // MARK: - Lifecycle

    func ЗҐƎȘȽŔȄñа́Λ(card: УйȫǻȻČУÁЬÁ) {
    ĄźȚƪжŊǟUoZ.image = UIImage(named: card.image)
    kȯнЛWĵùЦЪƠ.text = card.name
    ВнЦΜЙьƯĒȲƎ.text = card.size
    jnMьƯĒȲƎ.text = "$\(card.price)"

    }
}
