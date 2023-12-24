//
//  Router.swift
//  CryptoViper
//
//  Created by Melik Demiray on 22.12.2023.
//

import Foundation


// Entry Point
// Router is the entry point of the VIPER architecture. It is responsible for creating the module and navigating between modules.
// talks to presenter

protocol AnyRouter {

    static func startExecution() -> AnyRouter
}

class CryptoRouter: AnyRouter {
    static func startExecution() -> AnyRouter {
        let router = CryptoRouter()
        return router
    }
}
