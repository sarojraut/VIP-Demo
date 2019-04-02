//
//  URLConstants.swift
//  VIP-Demo
//
//  Created by admin on 4/1/19.
//  Copyright © 2019 admin. All rights reserved.
//

import Foundation

struct APPURL {
    
    private struct Domains {
       
        static let Dev = "https://jsonplaceholder.typicode.com"
        
    }
    
    private  struct Routes {
        static let Api = "/"
    }
    
    struct UrlCollection{
        
        struct UserDetailUrl {
            static let UserPosts = "posts"
          
        }
    }
    
    private  static let Route = Routes.Api
    static let BaseURL = Domains.Dev + Route
    static let BaseRootUrl = Domains.Dev
}

