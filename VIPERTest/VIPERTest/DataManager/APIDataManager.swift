//
//  APIDataManager.swift
//  VIPERTest
//
//  Created by Deepak Kumar on 04/09/18.
//  Copyright © 2018 Deepak Kumar. All rights reserved.
//

import Foundation

struct API {
    static let baseUrl: String = "http://swagbucks.com/?cmd=apm-"
}

class APIDataManager: NSObject {

    class func itemListData() -> [[String: String]] {
        return [["itemName": "Apple", "itemPrice": "3$"], ["itemName": "Banana", "itemPrice": "1$"],["itemName": "Orange", "itemPrice": "4$"],["itemName": "Grapes", "itemPrice": "20$"],["itemName": "Mango", "itemPrice": "40$"]];
    }
    
//    func APICall(completion: (([Results]?) -> Void)?) {
//
//        guard let url = URL(string: API.baseUrl) else {
//            return
//        }
//        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
//            guard let data = data else { return }
//            do {
//                //                if let dict = try JSONSerialization.jsonObject(with: data, options: []) as? [String: AnyObject] {
//                //                    print("Dict is \(dict)")
//                //                }
//                let json = try JSONDecoder().decode(Json4Swift_Base.self, from: data)
//                completion!(json.results!)
//            } catch {
//                print("News API Call Failed")
//            }
//        }
//        task.resume()
//    }
}


