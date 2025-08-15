//
//  ĳÐÐЙȕЊÙƵńj.swift
//  Superformix
//
//  Created by admin on 14.08.2025.
//

import UIKit

class ĳÐÐЙȕЊÙƵńj: UICollectionViewCell {
    
    
    @IBOutlet weak var ȍȱęȀгȪфȷȦƮ: UIImageView!
    
 
    // MARK: - constanta ID
    static let cellID = "ĳÐÐЙȕЊÙƵńj"
    
    // MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func ĢƇSīКėƲǰФƊ(num: Int) {
        ȍȱęȀгȪфȷȦƮ.image = UIImage(named: "category\(num)")
    }
    
    
}

