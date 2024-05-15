//
//  RestaurantData.swift
//  landmarks
//
//  Created by IACD Training 13 on 2024/04/22.
//

import Foundation

@Observable
class RestaurantData{
    
    var restaurants: [Restaurant] = load3("restaurant.json")
    
    var features: [Restaurant]{
        restaurants.filter{ $0.isFeatured}
    }
    
    var categories: [String: [Restaurant]]{
        Dictionary(
        grouping: restaurants,
        by: {$0.category.rawValue}
        )
    }
    
    
}



func load3<T: Decodable>(_ filename: String) -> T {
    let data: Data


    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }


    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }


    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
