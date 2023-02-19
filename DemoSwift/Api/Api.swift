//
//  Api.swift
//  DemoSwift
//
//  Created by Magus on 2023/2/18.
//

import Foundation
import Moya

let provider = MoyaProvider<Api>()
enum Api: TargetType {
    
    case login(account: String, password: String)
    case logout
    case query
}


extension Api {
    var baseURL: URL {
        return  URL.init(string: "www.baidu.com")!
    }
    
    var path: String
    {
        return  "/login"
    }
    
    var method: Moya.Method
    {
        return  .post
    }
    
    var task: Moya.Task
    {
        // 发起请求
        .requestParameters(parameters: [:], encoding: URLEncoding.default)
    }
    
    var headers: [String : String]?
    {
        return  nil
    }
}

