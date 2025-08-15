//
//  ŎƃƓИŠƚƒķŽȚ.swift
//  Superformix
//
//  Created by admin on 05.08.2025.
//

import UIKit

class ŎƃƓИŠƚƒķŽȚ: UIViewController {
    
    @IBAction func ƄǾÍфȁŹΚАyГ(_ sender: Any) { // login
        
        guard let ЬǪFlĳĶýΞцś = storyboard?.instantiateViewController(withIdentifier: "ŞÞƚÅЫȃǐìǳƲ") as? ŞÞƚÅЫȃǐìǳƲ else {
            print("Error: Unable to instantiate SPSelectSettingViewController.")
            return
        }
        ЬǪFlĳĶýΞцś.modalPresentationStyle = .fullScreen
        present(ЬǪFlĳĶýΞцś, animated: true)
    }
    
    @IBAction func ȱȕǬŧɀЖгkȱi(_ sender: Any) { // guest mode
        guard let ŧáǍЁÂзŪȭёȅ = storyboard?.instantiateViewController(withIdentifier: "АţУΜЬĢǩơɍț") as? АţУΜЬĢǩơɍț else {
            print("Error: Unable to instantiate АţУΜЬĢǩơɍț.")
            return
        }
        ŧáǍЁÂзŪȭёȅ.modalPresentationStyle = .fullScreen
        present(ŧáǍЁÂзŪȭёȅ, animated: true)
        
        let userManager = fǾЈƤɌȵЯЯȝ()
        
        if userManager.ȈŢǮėΣБƆȉúĖ() {
            userManager.KŶЬąша́ƧЬȕЀ()
        } else {
            
        }
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
    return .portrait
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
}
