//
//  ɇşğƒƧįƜЮАŚ.swift
//  Superformix
//
//  Created by admin on 15.08.2025.
//

import Foundation

class ɇşğƒƧįƜЮАŚ {
    
    private let userKey = "ordersData"
    
    
    func sæГƙkǥЮƝǪЩФ() -> [ЇШǵƸǻÂǫKƜё] { // loadOrders
        let defaults = UserDefaults.standard
        if let savedData = defaults.object(forKey: userKey) as? Data {
            let decoder = JSONDecoder()
            if let loadedUsers = try? decoder.decode([ЇШǵƸǻÂǫKƜё].self, from: savedData) {
                return loadedUsers
            }
        }
        return []
    }
    
    private func ЗÀǮtńıéƯȳЮ(_ equipment: [ЇШǵƸǻÂǫKƜё]) { // saveNewToOrder
        let encoder = JSONEncoder()
        if let encodedData = try? encoder.encode(equipment) {
            let defaults = UserDefaults.standard
            defaults.set(encodedData, forKey: userKey)
        }
    }
    
    func ÃȃƬǿĭĕɏųĥš(_ newTask: ЇШǵƸǻÂǫKƜё) { // addOrder
        var orders = sæГƙkǥЮƝǪЩФ()
        orders.append(newTask)
        ЗÀǮtńıéƯȳЮ(orders)
    }
    
}



struct ЇШǵƸǻÂǫKƜё: Codable, Equatable { // OrderDataModel
    var image: String
    var items: Int
    var priceAll: Float
    var orderNumber: String
}
