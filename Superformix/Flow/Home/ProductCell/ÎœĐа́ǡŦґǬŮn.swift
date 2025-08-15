//
//  ÎœĐа́ǡŦґǬŮn.swift
//  Superformix
//
//  Created by admin on 13.08.2025.
//

import UIKit

class ÎœĐа́ǡŦґǬŮn: UICollectionViewCell {
    
    
    @IBOutlet weak var ЛЙbЏΜЮƘÛȩȯ: UIImageView! // product im
    @IBOutlet weak var ĖȘИǪõƒƛǪШc: UILabel! // prod name
    @IBOutlet weak var ƛΚцОЩĘɂȦǰN: UILabel! // price
    
    // MARK: - constanta ID
    static let cellID = "ÎœĐа́ǡŦґǬŮn"
    
    // MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    
    func ǛħǰUľШǍÊȠГ(prod: ClothesModel) {
        ЛЙbЏΜЮƘÛȩȯ.image = UIImage(named: "\(prod.imageName)")
        ĖȘИǪõƒƛǪШc.text = prod.closeTitle
        ƛΚцОЩĘɂȦǰN.text = "$\(prod.price)"
    }
    
    
}
