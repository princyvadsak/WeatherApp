//
//  ApiHandler.swift
//  WeatherApp
//
//  Created by DCS on 15/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import Foundation
class ApiHandler{
    
    static let shared = ApiHandler()
    
    func searchcity(with name:String) -> [CityDetail]{
        
        if let url = URL(string: "https://api.weatherapi.com/v1/current.json?key=a6b741720f9a481bac185141211407&q=\(name)")
        {
            
            if let data = try? Data(contentsOf: url)
            {
                
                let decoder = JSONDecoder()
                
                if let JSONData = try? decoder.decode(CityDetail.self,from: data)
                {
                    print(JSONData.current.condition)
                    return [JSONData]
                }
            }
        }
        return [CityDetail]()
    }
}
