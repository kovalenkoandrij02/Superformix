//
//  ШĹǤхǮZƑȕȪй.swift
//  Superformix
//
//  Created by admin on 14.08.2025.
//

import UIKit

class ШĹǤхǮZƑȕȪй: UIViewController {
    
    @IBAction func śǳȍЧĞȣшГfȑed(_ sender: Any) {
        self.dismiss(animated: true)
    }
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
    return .portrait
    }
    
    @IBOutlet weak var pǹǂƝǝРȞĳźș: UITableView! // clothertableView
    
    @IBOutlet weak var ЬŨŞȂșȽÐĶǣм: UIButton! // inStoreButton
    @IBOutlet weak var ƀɈuǏШхƢЋȯр: UIButton! // deliveryButton
    
    @IBOutlet weak var ȵЛĩОƲįȸКGȬ: UITextField! // phoneTextFiels
    
    @IBOutlet weak var sȡĆǖИщюɋlöк: UILabel! // totalLabel
    @IBOutlet weak var аЧyɊǳąǡЩȸƑ: UILabel! // grandTotalLabel
    @IBOutlet weak var ĄźȚƪжŊǟUoZ: UIButton! // confirmOrderButton
    
    @IBAction func kȯнЛWĵùЦЪƠ(_ sender: Any) { // inStoreTap
        ЬŨŞȂșȽÐĶǣм.isSelected = true
        ƀɈuǏШхƢЋȯр.isSelected = false
    }
    
    @IBAction func ВнЦΜЙьƯĒȲƎ(_ sender: Any) { // deliveryTap
        ЬŨŞȂșȽÐĶǣм.isSelected = false
        ƀɈuǏШхƢЋȯр.isSelected = true
    }
    
    @IBAction func ЗҐƎȘȽŔȄñа́Λ(_ sender: Any) { // confirmTap
        guard let ƜȘXƮВȨǯÂΔĜ = storyboard?.instantiateViewController(withIdentifier: "İĐюôŘMВńHĨ") as? İĐюôŘMВńHĨ else {
            print("Error: Unable to instantiate İĐюôŘMВńHĨ.")
            return
        }
        ƜȘXƮВȨǯÂΔĜ.modalPresentationStyle = .fullScreen
        present(ƜȘXƮВȨǯÂΔĜ, animated: true)
    }

    
    var śǳȍЧĞȣшГfȑ: Bool = false // isDelivered
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pǹǂƝǝРȞĳźș.delegate = self
        pǹǂƝǝРȞĳźș.dataSource = self
        pǹǂƝǝРȞĳźș.backgroundColor = .clear
        
        ȵЛĩОƲįȸКGȬ.delegate = self
        ȵЛĩОƲįȸКGȬ.addTarget(self, action: #selector(textFieldTextEditingDidChange(_:)), for: .editingChanged)
        
        ЬŨŞȂșȽÐĶǣм.isSelected = true
        ĄźȚƪжŊǟUoZ.isEnabled = false
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        calculateAllCost()
    }
    
    
    
    func calculateAllCost() { // calculateAllCost
        let cardManager = sоbūwÍŠȳlМȴ()
        let allCard = cardManager.ȳƵȜýĪхĽƗũì()
        
        sȡĆǖИщюɋlöк.text = "$\(calculateTotalPrice(for: allCard))"
        аЧyɊǳąǡЩȸƑ.text = "$\(calculateTotalPrice(for: allCard))"
    }
    
    func calculateTotalPrice(for cards: [УйȫǻȻČУÁЬÁ]) -> Float {
        return cards.reduce(0) { $0 + $1.price }
    }
    
}






extension ШĹǤхǮZƑȕȪй: UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sоbūwÍŠȳlМȴ().ȳƵȜýĪхĽƗũì().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: аЧyɊǳąǡЩȸƑ.cellID, for: indexPath) as! аЧyɊǳąǡЩȸƑ
        
        let cardManager = sоbūwÍŠȳlМȴ()
        let allCard = cardManager.ȳƵȜýĪхĽƗũì()
        
        cell.ЗҐƎȘȽŔȄñа́Λ(card: allCard[indexPath.row])
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
        
    }
    
}




//MARK: - UITextFiel dDelegate
extension ШĹǤхǮZƑȕȪй: UITextFieldDelegate {
    
    @IBAction func textFieldTextEditingDidChange(_ sender: Any) {
        guard let textField = sender as? UITextField else { return }
        
        // Удаляем пробелы, символы и оставляем только цифры
        let filteredText = textField.text?.filter { $0.isNumber } ?? ""
        
        // Максимальная длина номера (например, 10 цифр)
        let maxLength = 10
        
        // Ограничиваем длину текста
        if filteredText.count > maxLength {
            let index = filteredText.index(filteredText.startIndex, offsetBy: maxLength)
            textField.text = String(filteredText[..<index])
        } else {
            textField.text = filteredText
        }
        
        // Валидация: проверяем, что номер состоит из нужного количества цифр
        if filteredText.count == maxLength {
            print("Номер телефона корректен: \(filteredText)")
            textField.textColor = .black
            ĄźȚƪжŊǟUoZ.isEnabled = true
        } else {
            print("Номер телефона некорректен")
            textField.textColor = .red
            ĄźȚƪжŊǟUoZ.isEnabled = false
        }
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true) //This will hide the keyboard
    }
    
}
