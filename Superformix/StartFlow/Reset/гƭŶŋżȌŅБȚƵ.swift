//
//  гƭŶŋżȌŅБȚƵ.swift
//  Superformix
//
//  Created by admin on 08.08.2025.
//

import UIKit


class гƭŶŋżȌŅБȚƵ: UIViewController, UITextFieldDelegate {
    
    @IBAction func ƈęΚЪХɇƕЯȴĨ(_ sender: Any) {
        self.dismiss(animated: true)
    }
    

    @IBOutlet weak var login_TF: UITextField!
    @IBOutlet weak var sf_TF: UITextField!
    
    @IBOutlet weak var nextButtonOutlet: UIButton!
    
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
    return .portrait
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButtonOutlet.isEnabled = false
        
        login_TF.delegate = self
        sf_TF.delegate = self
        
        login_TF.addTarget(self, action: #selector(ǪƜȻůǭüЙфȻГ(_:)), for: .editingChanged)
        
        sf_TF.addTarget(self, action: #selector(ǪƜȻůǭüЙфȻГ2(_:)), for: .editingChanged)
    }
    
    // MARK: - Text fiels func
    @objc func ǪƜȻůǭüЙфȻГ(_ sender: Any) {
        guard let ХŏoñǏƅēǎȢƘ = sender.self as? UITextField else { return }
       
    }
    
    @objc func ǪƜȻůǭüЙфȻГ2(_ sender: Any) {
        guard let ХŏoñǏƅēǎȢƘ = sender.self as? UITextField else { return }
        
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
