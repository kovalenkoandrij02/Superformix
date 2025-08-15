//
//  DataManager.swift
//  Superformix
//
//  Created by admin on 13.08.2025.
//

import Foundation

struct ClothesModel: Codable, Identifiable {
    let id: Int
    let closeTitle: String
    let imageName: String
    let price: Float
    let description: String
}


let hoodiesData : [ClothesModel] = Bundle.main.ćЪƟǣŵΛȑǍȡÖ("HoodiesData.json")
let tShirtsData: [ClothesModel] = Bundle.main.ćЪƟǣŵΛȑǍȡÖ("TShirtData.json")
let pantsData : [ClothesModel] = Bundle.main.ćЪƟǣŵΛȑǍȡÖ("PantsData.json")
let shortsData : [ClothesModel] = Bundle.main.ćЪƟǣŵΛȑǍȡÖ("ShortsData.json")
let jacketData : [ClothesModel] = Bundle.main.ćЪƟǣŵΛȑǍȡÖ("JacketData.json")
let capData : [ClothesModel] = Bundle.main.ćЪƟǣŵΛȑǍȡÖ("CapData.json")

let popularData : [ClothesModel] = Bundle.main.ćЪƟǣŵΛȑǍȡÖ("PopularData.json")







extension Bundle {
    
    func ćЪƟǣŵΛȑǍȡÖ<T : Codable>(_ y7e: String) -> T{
        guard let ćЪ = self.url(forResource: y7e, withExtension: nil) else {
            fatalError("Failed to locate the \(y7e) in Bundle ")
        }
        guard let ƟǣŵΛȑǍȡÖ = try? Data(contentsOf: ćЪ) else {
            fatalError("Failed to load data from \(y7e) in Bundle")
        }
        let ЪƟ3ΛȑǍȡÖ = JSONDecoder()
        
        guard let gbΛȑǍÖ = try? ЪƟ3ΛȑǍȡÖ.decode (T.self, from: ƟǣŵΛȑǍȡÖ) else {
            fatalError("failed to decode the \(y7e) in bundole")
        }
        return gbΛȑǍÖ
    }
    
    
}
