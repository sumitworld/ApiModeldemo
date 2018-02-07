 //
 //  WelcomeViewController.swift
 //  BNHPavilion
 //
 //  Created by Dipen on 03/05/17.
 //  Copyright © 2017 Guruz 8. All rights reserved.
 //
 
 import UIKit
 import Alamofire
 import Foundation
 import SwiftyJSON
 import Reachability
 
 class AlamofireModel: BaseValidationViewController
 {
    typealias CompletionHandler = (_ response:AnyObject) -> Void
    typealias ErrorHandler = (_ error : NSError) -> Void

    
    class func alamofireMethod(methods: Alamofire.HTTPMethod , url : URLConvertible, showloader : Bool = true, parameters : [String : String],Header: [String: String],handler:@escaping CompletionHandler,errorhandler : @escaping ErrorHandler)
    {
        
        print(parameters)
        
        var alamofireManager : Alamofire.SessionManager?
        
        var UrlFinal = ""
        do
        {
            try UrlFinal = baseURL + url.asURL().absoluteString
        }catch{}
        print(UrlFinal)
        
        if showloader
        {
            appInstance.showLoader()
        }
        
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForResource = 25
        configuration.timeoutIntervalForRequest = 25
        
        alamofireManager = Alamofire.SessionManager(configuration: configuration)
        alamofireManager = Alamofire.SessionManager.default
        
        alamofireManager?.request(UrlFinal, method: methods, parameters: parameters, encoding: URLEncoding.default, headers: Header).responseJSON(queue: nil, options: JSONSerialization.ReadingOptions.allowFragments, completionHandler: { (response) in
            
            appInstance.hideLoader()
            
            if response.result.isSuccess
            {
//                if response.response!.statusCode == 200
//                {
                    if (response.result.value != nil)
                    {
                        handler(response.result.value! as AnyObject)
                    }
//                }else if response.response!.statusCode == 401
//                {
//
//                }
            }
            else
            {
                errorhandler(response.result.error! as NSError)
                Utilities.showErrorMessage(text: "SomethingWentWrong")
            }
            
        })
    }
    
   
    //POST
    // DATA FROM SERVER
    class func GetDataFromServer(parameter : NSDictionary, URL : URLConvertible, showloader : Bool = true, handler:@escaping CompletionHandler)
    {
        let reachablecheck = Reachability()
        
        if (reachablecheck?.connection != .none)
        {
            AlamofireModel.alamofireMethod(methods: .post , url: URL, showloader : showloader, parameters: parameter as! [String : String], Header: header, handler: { (response) in
                    
                    if response["success"] as! Bool == true {
                        
                        handler(response as AnyObject)
                        
                    }else{
                        
                        if let message = response["message"] as? String
                        {
                            Utilities.showErrorMessage(text: message)
                        }
                        else
                        {
                            Utilities.showErrorMessage(text: SomethingWentWrong)
                        }
                    }
                }) { (error) in
                    print(error.localizedDescription)
                    Utilities.showErrorMessage(text: SomethingWentWrong)
                }
                
           
        }else
        {
            Utilities.showErrorMessage(text: "No Internet Connetion")
        }
    }
    
    //GETT
    class func GetDataFromServerGET(parameter : NSDictionary, URL : URLConvertible, showloader : Bool = true, handler:@escaping CompletionHandler)
    {
        let reachablecheck = Reachability()
        
        if (reachablecheck?.connection != .none)
        {

            AlamofireModel.alamofireMethod(methods: .get, url: URL, showloader : showloader, parameters: parameter as! [String : String], Header: header, handler: { (response) in
                
                let dict = JSON(response)
                
                if dict["status"].boolValue == true {
                    
                    handler(response as AnyObject)
                    
                }else{

                    if let message = response["msg"] as? String
                    {
                        Utilities.showErrorMessage(text: message)
                    }
                    else
                    {
                        Utilities.showErrorMessage(text: SomethingWentWrong)
                    }
                }
            }) { (error) in
                print(error.localizedDescription)
                Utilities.showErrorMessage(text: SomethingWentWrong)
            }
            
            
        }else
        {
            Utilities.showErrorMessage(text: "No internet COnnection")
        }
    }
    
 }
