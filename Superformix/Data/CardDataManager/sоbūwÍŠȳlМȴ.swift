//
//  sоbūwÍŠȳlМȴ.swift
//  Superformix
//
//  Created by admin on 14.08.2025.
//

import Foundation

class sоbūwÍŠȳlМȴ {

    private let userKey = "sоbūwÍŠȳlМȴ"
    
    func ȳƵȜýĪхĽƗũì() -> [УйȫǻȻČУÁЬÁ] { // load Card
        let ÏƓēƯĝ_ęΚя = UserDefaults.standard
        if let Ï_ƯĝΚűыя = ÏƓēƯĝ_ęΚя.object(forKey: userKey) as? Data {
            let decoder = JSONDecoder()
            if let Ɠo_ĝęcFя = try? decoder.decode([УйȫǻȻČУÁЬÁ].self, from: Ï_ƯĝΚűыя) {
                return Ɠo_ĝęcFя
            }
        }
        return []
    }
    
    private func ПǃÂȂÕȳȮȐóħ(_ equipment: [УйȫǻȻČУÁЬÁ]) { // saveNewToCard
        let ÏƓēƯĝęΚűыя = JSONEncoder()
        if let encodedData = try? ÏƓēƯĝęΚűыя.encode(equipment) {
            let defaults = UserDefaults.standard
            defaults.set(encodedData, forKey: userKey)
        }
    }
    
    func ЦɄįfȰȮĽȊȂġ(_ newTask: УйȫǻȻČУÁЬÁ) { // add card
        var ÏƓēƯĝęΚ = ȳƵȜýĪхĽƗũì()
        ÏƓēƯĝęΚ.append(newTask)
        ПǃÂȂÕȳȮȐóħ(ÏƓēƯĝęΚ)
    }
    
    
    
    func removeUser(at index: Int) { // remove card
        var ÏƓēƯĝ_ę = ȳƵȜýĪхĽƗũì()
        guard index < ÏƓēƯĝ_ę.count else { return }
        ÏƓēƯĝ_ę.remove(at: index)
        ПǃÂȂÕȳȮȐóħ(ÏƓēƯĝ_ę)
    }
    
    
}

struct УйȫǻȻČУÁЬÁ: Codable, Equatable { // card data model
    var image: String
    var name: String
    var size: String
    var price: Float
    var description: String
}
