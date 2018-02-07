//
//  ViewController.swift
//  ApiModeldemo
//
//  Created by Sumit Parmar on 05/02/18.
//  Copyright © 2018 Sumit Parmar. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
      
        
        callAPI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func callAPI()
    {
//        let param : [String : String] =
//            [
//                "email" : "email",
//                "password" : "2"
//            ]
//           print(param)

        AlamofireModel.GetDataFromServerGET(parameter: [String : String]() as NSDictionary, URL: Endpoint.GetQuizList.rawValue, handler: { response in

             print(JSON(response))

             let dict = JSON(response)
             print(dict)

        })
    }
    
//    func PostApiCall(){
//            let param : [String : String] = [
//                        "email" : "email",
//                        "password" : "2" ]
//                         print(param)
//        
//        AlamofireModel.GetDataFromServer(parameter: param as NSDictionary, URL: Endpoint.GetQuizList.rawValue, handler: { response in
//            
//            
//        })
//    
//    }
//    
}

