//
//  Router.swift
//  CryptoViper
//
//  Created by Melik Demiray on 22.12.2023.
//

import Foundation


// Entry Point


protocol AnyRouter {

    static func startExecution() -> AnyRouter
}

class CryptoRouter: AnyRouter {
    static func startExecution() -> AnyRouter {
        let router = CryptoRouter()
        return router
    }
}
